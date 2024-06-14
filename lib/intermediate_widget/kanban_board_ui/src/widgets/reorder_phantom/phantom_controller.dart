import 'package:flutter/widgets.dart';


import '../../utils/log.dart';
import '../board.dart';
import '../board_group/group_data.dart';
import '../reorder_flex/drag_state.dart';
import '../reorder_flex/drag_target.dart';
import '../reorder_flex/drag_target_interceptor.dart';

import 'phantom_state.dart';

abstract class BoardPhantomControllerDelegate {
  AppFlowyGroupController? controller(String groupId);

  bool removePhantom(String groupId);
  void insertPhantom(
    String groupId,
    int index,
    PhantomGroupItem item,
  );
  void updatePhantom(String groupId, int newIndex);

  void moveGroupItemToAnotherGroup(
    String fromGroupId,
    int fromGroupIndex,
    String toGroupId,
    int toGroupIndex,
  );
}

class BoardPhantomController extends OverlapDragTargetDelegate
    implements CrossReorderFlexDragTargetDelegate {
  BoardPhantomController({
    required this.delegate,
    required this.groupsState,
  });

  final BoardPhantomControllerDelegate delegate;
  final AppFlowyBoardState groupsState;

  PhantomRecord? phantomRecord;
  final phantomState = GroupPhantomState();
  bool shouldReorder(String groupId) {
    if (phantomRecord != null) {
      return phantomRecord!.toGroupId == groupId &&
          phantomRecord!.fromGroupId == groupId;
    }
    return true;
  }

  void updateIndex(int fromIndex, int toIndex) {
    if (phantomRecord == null) {
      return;
    }
    assert(phantomRecord!.fromGroupIndex == fromIndex);
    phantomRecord?.updateFromGroupIndex(toIndex);
  }

  void groupStartDragging(String groupId) {
    phantomState.setGroupIsDragging(groupId, true);
  }

  void groupEndDragging(String groupId) {
    phantomState.setGroupIsDragging(groupId, false);
    if (phantomRecord == null) return;

    final fromGroupId = phantomRecord!.fromGroupId;
    final toGroupId = phantomRecord!.toGroupId;
    if (fromGroupId == groupId) {
      phantomState.notifyDidRemovePhantom(toGroupId);
    }

    if (phantomRecord!.toGroupId == groupId) {
      delegate.moveGroupItemToAnotherGroup(
        fromGroupId,
        phantomRecord!.fromGroupIndex,
        toGroupId,
        phantomRecord!.toGroupIndex,
      );

      // Log.debug(
      //     "[$BoardPhantomController] did move ${phantomRecord.toString()}");
      phantomRecord = null;
    }
  }

  void _removePhantom(String groupId) {
    final didRemove = delegate.removePhantom(groupId);
    if (didRemove) {
      phantomState.notifyDidRemovePhantom(groupId);
      phantomState.removeGroupListener(groupId);
    }
  }

  void _insertPhantom(
    String toGroupId,
    FlexDragTargetData dragTargetData,
    int phantomIndex,
  ) {
    final phantomContext = PassthroughPhantomContext(
      index: phantomIndex,
      dragTargetData: dragTargetData,
    );
    phantomState.addGroupListener(toGroupId, phantomContext);

    delegate.insertPhantom(
      toGroupId,
      phantomIndex,
      PhantomGroupItem(phantomContext),
    );

    phantomState.notifyDidInsertPhantom(toGroupId, phantomIndex);
  }
  void _resetPhantomRecord(
    String groupId,
    FlexDragTargetData dragTargetData,
    int dragTargetIndex,
  ) {
    // Log.debug(
    //     '[$BoardPhantomController] move Group:[${dragTargetData.reorderFlexId}]:${dragTargetData.draggingIndex} '
    //     'to Group:[$groupId]:$dragTargetIndex');

    phantomRecord = PhantomRecord(
      toGroupId: groupId,
      toGroupIndex: dragTargetIndex,
      fromGroupId: dragTargetData.reorderFlexId,
      fromGroupIndex: dragTargetData.draggingIndex,
    );
    Log.debug('[$BoardPhantomController] will move: $phantomRecord');
  }

  @override
  bool acceptNewDragTargetData(
    String reorderFlexId,
    FlexDragTargetData dragTargetData,
    int dragTargetIndex,
  ) {
    if (phantomRecord == null) {
      _resetPhantomRecord(reorderFlexId, dragTargetData, dragTargetIndex);
      _insertPhantom(reorderFlexId, dragTargetData, dragTargetIndex);

      return true;
    }

    final isNewDragTarget = phantomRecord!.toGroupId != reorderFlexId;
    if (isNewDragTarget) {
      _removePhantom(phantomRecord!.toGroupId);
      _resetPhantomRecord(reorderFlexId, dragTargetData, dragTargetIndex);
      _insertPhantom(reorderFlexId, dragTargetData, dragTargetIndex);
    }

    return isNewDragTarget;
  }

  @override
  void updateDragTargetData(
    String reorderFlexId,
    int dragTargetIndex,
  ) {
    phantomRecord?.updateInsertedIndex(dragTargetIndex);

    assert(phantomRecord != null);
    if (phantomRecord!.toGroupId == reorderFlexId) {
      delegate.updatePhantom(phantomRecord!.toGroupId, dragTargetIndex);
    }
  }

  @override
  void cancel() {
    if (phantomRecord == null) {
      return;
    }
    _removePhantom(phantomRecord!.toGroupId);
    phantomRecord = null;
  }

  @override
  void dragTargetDidMoveToReorderFlex(
    String reorderFlexId,
    FlexDragTargetData dragTargetData,
    int dragTargetIndex,
  ) {
    acceptNewDragTargetData(
      reorderFlexId,
      dragTargetData,
      dragTargetIndex,
    );
  }

  @override
  int getInsertedIndex(String dragTargetId) {
    if (phantomState.isDragging(dragTargetId)) {
      return -1;
    }

    final controller = delegate.controller(dragTargetId);
    if (controller != null) {
      return controller.groupData.items.length;
    }

    return 0;
  }
}

class PhantomRecord {
  PhantomRecord({
    required this.toGroupId,
    required this.toGroupIndex,
    required this.fromGroupId,
    required this.fromGroupIndex,
  });

  final String toGroupId;
  int toGroupIndex;
  final String fromGroupId;
  int fromGroupIndex;

  void updateFromGroupIndex(int index) => fromGroupIndex = index;

  void updateInsertedIndex(int index) {
    if (toGroupIndex == index) {
      return;
    }

    Log.debug(
      '[$PhantomRecord] Group:[$toGroupId] update position $toGroupIndex -> $index',
    );
    toGroupIndex = index;
  }

  @override
  String toString() =>
      'Group:[$fromGroupId]:$fromGroupIndex to Group:[$toGroupId]:$toGroupIndex';
}

class PhantomGroupItem extends AppFlowyGroupItem {
  PhantomGroupItem(PassthroughPhantomContext insertedPhantom)
      : phantomContext = insertedPhantom;

  final PassthroughPhantomContext phantomContext;

  @override
  bool get isPhantom => true;

  @override
  String get id => phantomContext.itemData.id;

  Size? get feedbackSize => phantomContext.feedbackSize;

  Widget get draggingWidget => phantomContext.draggingWidget == null
      ? const SizedBox()
      : phantomContext.draggingWidget!;

  @override
  String toString() => 'phantom:$id';
}

class PassthroughPhantomContext extends FakeDragTargetEventTrigger
    implements FakeDragTargetEventData, PassthroughPhantomListener {
  PassthroughPhantomContext({
    required this.index,
    required this.dragTargetData,
  });

  @override
  int index;

  @override
  final FlexDragTargetData dragTargetData;

  @override
  Size? get feedbackSize => dragTargetData.feedbackSize;

  Widget? get draggingWidget => dragTargetData.draggingWidget;

  AppFlowyGroupItem get itemData =>
      dragTargetData.reorderFlexItem as AppFlowyGroupItem;

  @override
  void Function(int?)? onInserted;

  @override
  VoidCallback? onDragEnded;

  @override
  void fakeOnDragEnded(VoidCallback callback) {
    onDragEnded = callback;
  }

  @override
  void fakeOnDragStart(void Function(int? index) callback) {
    onInserted = callback;
  }
}

class PassthroughPhantomWidget extends PhantomWidget {
  PassthroughPhantomWidget({
    super.key,
    required super.opacity,
    required this.passthroughPhantomContext,
  }) : super(child: passthroughPhantomContext.draggingWidget);

  final PassthroughPhantomContext passthroughPhantomContext;
}

class PhantomDraggableBuilder extends ReorderFlexDraggableTargetBuilder {
  PhantomDraggableBuilder();
  @override
  Widget? build<T extends DragTargetData>(
    BuildContext context,
    Widget child,
    DragTargetOnStarted onDragStarted,
    DragTargetOnEnded<T> onDragEnded,
    DragTargetWillAccepted<T> onWillAccept,
    AnimationController insertAnimationController,
    AnimationController deleteAnimationController,
  ) {
    if (child is PassthroughPhantomWidget) {
      return FakeDragTarget<T>(
        eventTrigger: child.passthroughPhantomContext,
        eventData: child.passthroughPhantomContext,
        onDragStarted: onDragStarted,
        onDragEnded: onDragEnded,
        onWillAccept: onWillAccept,
        insertAnimationController: insertAnimationController,
        deleteAnimationController: deleteAnimationController,
        child: child,
      );
    }

    return null;
  }
}
