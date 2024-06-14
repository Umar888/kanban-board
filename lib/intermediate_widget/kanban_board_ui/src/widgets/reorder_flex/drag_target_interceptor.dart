import 'dart:async';

import 'package:flutter/material.dart';


import '../../utils/log.dart';

import '../board.dart';
import 'drag_state.dart';
import 'drag_target.dart';
import 'reorder_flex.dart';

abstract class DragTargetInterceptor {
  String get reorderFlexId;
  bool canHandler(FlexDragTargetData dragTargetData);
  bool onWillAccept({
    required BuildContext context,
    required ReorderFlexState reorderFlexState,
    required FlexDragTargetData dragTargetData,
    required String dragTargetId,
    required int dragTargetIndex,
  });
  void onAccept(FlexDragTargetData dragTargetData) {}

  void onLeave(FlexDragTargetData dragTargetData) {}

  ReorderFlexDraggableTargetBuilder? get draggableTargetBuilder => null;
}

abstract class OverlapDragTargetDelegate {
  void cancel();
  void dragTargetDidMoveToReorderFlex(
    String reorderFlexId,
    FlexDragTargetData dragTargetData,
    int dragTargetIndex,
  );

  int getInsertedIndex(String dragTargetId);
}
class OverlappingDragTargetInterceptor extends DragTargetInterceptor {
  OverlappingDragTargetInterceptor({
    required this.delegate,
    required this.reorderFlexId,
    required this.acceptedReorderFlexId,
    required this.columnsState,
  });

  final OverlapDragTargetDelegate delegate;

  @override
  final String reorderFlexId;

  final List<String> acceptedReorderFlexId;
  final AppFlowyBoardState columnsState;

  Timer? _delayOperation;

  @override
  bool canHandler(FlexDragTargetData dragTargetData) {
    return acceptedReorderFlexId.contains(dragTargetData.reorderFlexId);
  }

  @override
  bool onWillAccept({
    required BuildContext context,
    required ReorderFlexState reorderFlexState,
    required FlexDragTargetData dragTargetData,
    required String dragTargetId,
    required int dragTargetIndex,
  }) {
    if (dragTargetId == dragTargetData.reorderFlexId) {
      delegate.cancel();
    } else {
      // Ignore the event if the dragTarget overlaps with the other column's dragTargets.
      final columnKeys = columnsState.groupDragTargetKeys[dragTargetId];
      if (columnKeys != null) {
        final keys = columnKeys.values.toList();
        if (dragTargetData.isOverlapWithWidgets(keys)) {
          _delayOperation?.cancel();
          return true;
        }
      }

      _delayOperation?.cancel();
      _delayOperation = Timer(const Duration(milliseconds: 100), () {
        final index = delegate.getInsertedIndex(dragTargetId);
        if (index != -1) {
          Log.trace(
            '[$OverlappingDragTargetInterceptor] move to $dragTargetId at $index',
          );
          delegate.dragTargetDidMoveToReorderFlex(
            dragTargetId,
            dragTargetData,
            index,
          );

          columnsState.reorderFlexActionMap[dragTargetId]
              ?.resetDragTargetIndex(index);
        }
      });
    }

    return true;
  }
}

abstract class CrossReorderFlexDragTargetDelegate {
  bool acceptNewDragTargetData(
    String reorderFlexId,
    FlexDragTargetData dragTargetData,
    int dragTargetIndex,
  );

  void updateDragTargetData(String reorderFlexId, int dragTargetIndex);
}

class CrossReorderFlexDragTargetInterceptor extends DragTargetInterceptor {
  CrossReorderFlexDragTargetInterceptor({
    required this.reorderFlexId,
    required this.delegate,
    required this.acceptedReorderFlexIds,
    this.draggableTargetBuilder,
  });

  @override
  final String reorderFlexId;
  final CrossReorderFlexDragTargetDelegate delegate;
  final List<String> acceptedReorderFlexIds;

  @override
  final ReorderFlexDraggableTargetBuilder? draggableTargetBuilder;

  @override
  bool canHandler(FlexDragTargetData dragTargetData) {
    if (acceptedReorderFlexIds.isEmpty) {
      return false;
    }

    if (acceptedReorderFlexIds.contains(dragTargetData.reorderFlexId)) {
      Log.trace(
        "[$CrossReorderFlexDragTargetInterceptor] $reorderFlexId should accept ${dragTargetData.reorderFlexId} : ${reorderFlexId != dragTargetData.reorderFlexId}",
      );
      return reorderFlexId != dragTargetData.reorderFlexId;
    } else {
      Log.trace(
        "[$CrossReorderFlexDragTargetInterceptor] not accept ${dragTargetData.reorderFlexId}",
      );
      return false;
    }
  }

  @override
  void onAccept(FlexDragTargetData dragTargetData) {
    Log.trace(
      '[$CrossReorderFlexDragTargetInterceptor] Group:[$reorderFlexId] on onAccept',
    );
  }

  @override
  void onLeave(FlexDragTargetData dragTargetData) {
    Log.trace(
      '[$CrossReorderFlexDragTargetInterceptor] Group:[$reorderFlexId] on leave',
    );
  }

  @override
  bool onWillAccept({
    required BuildContext context,
    required ReorderFlexState reorderFlexState,
    required FlexDragTargetData dragTargetData,
    required String dragTargetId,
    required int dragTargetIndex,
  }) {
    final isNewDragTarget = delegate.acceptNewDragTargetData(
      reorderFlexId,
      dragTargetData,
      dragTargetIndex,
    );

    Log.debug(
      '[$CrossReorderFlexDragTargetInterceptor] isNewDragTarget: $isNewDragTarget, dargTargetIndex: $dragTargetIndex, reorderFlexId: $reorderFlexId',
    );

    if (isNewDragTarget == false) {
      delegate.updateDragTargetData(reorderFlexId, dragTargetIndex);
      reorderFlexState.handleOnWillAccept(context, dragTargetIndex);
    }

    return true;
  }
}
