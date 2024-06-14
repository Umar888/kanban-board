import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';


import '../utils/log.dart';

import 'board_group/group_data.dart';
import 'reorder_flex/reorder_flex.dart';
import 'reorder_phantom/phantom_controller.dart';

typedef OnMoveGroup = void Function(
  String fromGroupId,
  int fromIndex,
  String toGroupId,
  int toIndex,
);

typedef OnMoveGroupItem = void Function(
  String groupId,
  int fromIndex,
  int toIndex,
);

typedef OnMoveGroupItemToGroup = void Function(
  String fromGroupId,
  int fromIndex,
  String toGroupId,
  int toIndex,
);

typedef OnStartDraggingCard = void Function(
  String groupId,
  int index,
);

class AppFlowyBoardController extends ChangeNotifier
    with EquatableMixin
    implements BoardPhantomControllerDelegate, ReoderFlexDataSource {
  AppFlowyBoardController({
    this.onMoveGroup,
    this.onMoveGroupItem,
    this.onMoveGroupItemToGroup,
    this.onStartDraggingCard,
  });

  final List<AppFlowyGroupData> _groupDatas = [];

  final OnMoveGroup? onMoveGroup;

  final OnMoveGroupItem? onMoveGroupItem;

  final OnMoveGroupItemToGroup? onMoveGroupItemToGroup;

  final OnStartDraggingCard? onStartDraggingCard;

  UnmodifiableListView<AppFlowyGroupData> get groupDatas =>
      UnmodifiableListView(_groupDatas);

  List<String> get groupIds =>
      _groupDatas.map((groupData) => groupData.id).toList();

  final LinkedHashMap<String, AppFlowyGroupController> _groupControllers = LinkedHashMap();

  void addGroup(AppFlowyGroupData groupData, {bool notify = true}) {
    if (_groupControllers[groupData.id] != null) return;

    final controller = AppFlowyGroupController(groupData: groupData);
    _groupDatas.add(groupData);
    _groupControllers[groupData.id] = controller;
    if (notify) notifyListeners();
  }
  void insertGroup(
    int index,
    AppFlowyGroupData groupData, {
    bool notify = true,
  }) {
    if (_groupControllers[groupData.id] != null) return;

    final controller = AppFlowyGroupController(groupData: groupData);
    _groupDatas.insert(index, groupData);
    _groupControllers[groupData.id] = controller;
    if (notify) notifyListeners();
  }
  void addGroups(List<AppFlowyGroupData> groups, {bool notify = true}) {
    for (final column in groups) {
      addGroup(column, notify: false);
    }

    if (groups.isNotEmpty && notify) notifyListeners();
  }

  void removeGroup(String groupId, {bool notify = true}) {
    final index = _groupDatas.indexWhere((group) => group.id == groupId);
    if (index == -1) {
      Log.warn(
        'Try to remove Group:[$groupId] failed. Group:[$groupId] does not exist',
      );
    }

    if (index != -1) {
      _groupDatas.removeAt(index);
      _groupControllers.remove(groupId);

      if (notify) notifyListeners();
    }
  }

  void removeGroups(List<String> groupIds, {bool notify = true}) {
    for (final groupId in groupIds) {
      removeGroup(groupId, notify: false);
    }

    if (groupIds.isNotEmpty && notify) notifyListeners();
  }

  void clear() {
    _groupDatas.clear();
    for (final group in _groupControllers.values) {
      group.dispose();
    }
    _groupControllers.clear();

    notifyListeners();
  }

  AppFlowyGroupController? getGroupController(String groupId) {
    final groupController = _groupControllers[groupId];
    if (groupController == null) {
      Log.warn('Group:[$groupId] \'s controller is not exist');
    }

    return groupController;
  }

  void moveGroup(int fromIndex, int toIndex, {bool notify = true}) {
    final toGroupData = _groupDatas[toIndex];
    final fromGroupData = _groupDatas.removeAt(fromIndex);

    _groupDatas.insert(toIndex, fromGroupData);
    onMoveGroup?.call(fromGroupData.id, fromIndex, toGroupData.id, toIndex);
    if (notify) notifyListeners();
  }

  void moveGroupItem(String groupId, int fromIndex, int toIndex) {
    if (getGroupController(groupId)?.move(fromIndex, toIndex) ?? false) {
      onMoveGroupItem?.call(groupId, fromIndex, toIndex);
    }
  }

  void addGroupItem(String groupId, AppFlowyGroupItem item) {
    getGroupController(groupId)?.add(item);
  }

  void insertGroupItem(String groupId, int index, AppFlowyGroupItem item) {
    getGroupController(groupId)?.insert(index, item);
  }
  void removeGroupItem(String groupId, String itemId) {
    getGroupController(groupId)?.removeWhere((item) => item.id == itemId);
  }

  void updateGroupItem(String groupId, AppFlowyGroupItem item) {
    getGroupController(groupId)?.replaceOrInsertItem(item);
  }

  void enableGroupDragging(bool isEnable) {
    for (final groupController in _groupControllers.values) {
      groupController.enableDragging(isEnable);
    }
  }

  @override
  @protected
  void moveGroupItemToAnotherGroup(
    String fromGroupId,
    int fromGroupIndex,
    String toGroupId,
    int toGroupIndex,
  ) {
    final fromGroupController = getGroupController(fromGroupId)!;
    final toGroupController = getGroupController(toGroupId)!;
    final fromGroupItem = fromGroupController.removeAt(fromGroupIndex);
    if (fromGroupItem == null) return;

    if (toGroupController.items.length > toGroupIndex) {
      assert(toGroupController.items[toGroupIndex] is PhantomGroupItem);

      toGroupController.replace(toGroupIndex, fromGroupItem);
      onMoveGroupItemToGroup?.call(
        fromGroupId,
        fromGroupIndex,
        toGroupId,
        toGroupIndex,
      );
    }
  }

  @override
  List<Object?> get props => [_groupDatas];

  @override
  AppFlowyGroupController? controller(String groupId) =>
      _groupControllers[groupId];

  @override
  String get identifier => '$AppFlowyBoardController';

  @override
  UnmodifiableListView<ReoderFlexItem> get items =>
      UnmodifiableListView(_groupDatas);

  @override
  @protected
  bool removePhantom(String groupId) {
    final groupController = getGroupController(groupId);
    if (groupController == null) {
      Log.warn('Can not find the group controller with groupId: $groupId');
      return false;
    }
    final index = groupController.items.indexWhere((item) => item.isPhantom);
    final isExist = index != -1;
    if (isExist) {
      groupController.removeAt(index);

      Log.debug(
        '[$AppFlowyBoardController] Group:[$groupId] remove phantom, current count: ${groupController.items.length}',
      );
    }
    return isExist;
  }

  @override
  @protected
  void updatePhantom(String groupId, int newIndex) {
    final groupController = getGroupController(groupId)!;
    final index = groupController.items.indexWhere((item) => item.isPhantom);

    if (index != -1) {
      if (index != newIndex) {
        Log.trace(
          '[$BoardPhantomController] update $groupId:$index to $groupId:$newIndex',
        );
        final item = groupController.removeAt(index, notify: false);
        if (item != null) {
          groupController.insert(newIndex, item, notify: false);
        }
      }
    }
  }

  @override
  @protected
  void insertPhantom(String groupId, int index, PhantomGroupItem item) =>
      getGroupController(groupId)!.insert(index, item);
}
