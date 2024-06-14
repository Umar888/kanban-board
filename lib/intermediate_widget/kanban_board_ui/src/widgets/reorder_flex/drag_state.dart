import 'package:flutter/material.dart';

import '../../utils/log.dart';

import 'drag_target.dart';
import 'reorder_flex.dart';


class FlexDragTargetData extends DragTargetData {
  FlexDragTargetData({
    required this.dragTargetId,
    required this.draggingIndex,
    required this.reorderFlexId,
    required this.reorderFlexItem,
    required this.dragTargetIndexKey,
    required DraggingState draggingState,
  }) : _draggingState = draggingState;

  final String dragTargetId;

  @override
  final int draggingIndex;

  final String reorderFlexId;
  final ReoderFlexItem reorderFlexItem;
  final GlobalObjectKey dragTargetIndexKey;
  final DraggingState _draggingState;

  Offset dragTargetOffset = Offset.zero;

  Widget? get draggingWidget => _draggingState.draggingWidget;
  Size? get feedbackSize => _draggingState.feedbackSize;
  bool get isDragging => _draggingState.isDragging();

  @override
  String toString() =>
      'ReorderFlexId: $reorderFlexId, dragTargetId: $dragTargetId';

  bool isOverlapWithWidgets(List<GlobalObjectKey> widgetKeys) {
    final renderBox = dragTargetIndexKey.currentContext?.findRenderObject();
    if (renderBox == null) return false;
    if (renderBox is! RenderBox) return false;
    final size = feedbackSize ?? Size.zero;

    final Rect dragTargetRect = renderBox.localToGlobal(Offset.zero) & size;
    for (final widgetKey in widgetKeys) {
      final renderObject = widgetKey.currentContext?.findRenderObject();
      if (renderObject != null && renderObject is RenderBox) {
        final Rect widgetRect =
            renderObject.localToGlobal(Offset.zero) & renderObject.size;
        return dragTargetRect.overlaps(widgetRect);
      }
    }

    return false;
  }
}

abstract class DraggingStateStorage {
  void insertState(String reorderFlexId, DraggingState state);
  void removeState(String reorderFlexId);
  DraggingState? readState(String reorderFlexId);
}

class DraggingState {
  DraggingState(this.reorderFlexId);

  final String reorderFlexId;
  Widget? _draggingWidget;
  Widget? get draggingWidget => _draggingWidget;
  Size? feedbackSize = Size.zero;
  GlobalObjectKey? draggingKey;
  int dragStartIndex = -1;
  int phantomIndex = -1;
  int currentIndex = -1;
  int nextIndex = -1;
  bool scrolling = false;
  static const double _dropAreaMargin = 0.0;

  Size get dropAreaSize {
    if (feedbackSize == null) {
      return Size.zero;
    }
    return feedbackSize! + const Offset(_dropAreaMargin, _dropAreaMargin);
  }

  void startDragging(
    Widget draggingWidget,
    int draggingWidgetIndex,
    Size? draggingWidgetSize,
  ) {
    ///
    assert(draggingWidgetIndex >= 0);

    _draggingWidget = draggingWidget;
    phantomIndex = draggingWidgetIndex;
    dragStartIndex = draggingWidgetIndex;
    currentIndex = draggingWidgetIndex;
    feedbackSize = draggingWidgetSize;
  }

  void endDragging() {
    dragStartIndex = -1;
    phantomIndex = -1;
    currentIndex = -1;
    nextIndex = -1;
    _draggingWidget = null;
  }
  void removePhantom() => phantomIndex = currentIndex;
  bool isOverlapWithPhantom() => currentIndex != phantomIndex;
  bool isPhantomAboveDragTarget() => currentIndex > phantomIndex;
  bool isPhantomBelowDragTarget() => currentIndex < phantomIndex;
  bool didDragTargetMoveToNext() => currentIndex == nextIndex;
  void moveDragTargetToNext() {
    Log.debug('$reorderFlexId updateCurrentIndex: $nextIndex');
    currentIndex = nextIndex;
  }

  void updateNextIndex(int index) {
    Log.debug('$reorderFlexId updateNextIndex: $index');
    nextIndex = index;
  }

  void setStartDraggingIndex(int index) {
    Log.debug('$reorderFlexId setDragIndex: $index');
    dragStartIndex = index;
    phantomIndex = index;
    currentIndex = index;
    nextIndex = index;
  }

  bool isNotDragging() => dragStartIndex == -1;

  bool isDragging() => !isNotDragging();

  bool isDragTargetMovingDown() => dragStartIndex < currentIndex;

  int calculateShiftedIndex(int index) {
    int shiftedIndex = index;
    if (index == dragStartIndex) {
      shiftedIndex = phantomIndex;
    } else if (index > dragStartIndex && index <= phantomIndex) {
      shiftedIndex--;
    } else if (index < dragStartIndex && index >= phantomIndex) {
      shiftedIndex++;
    }
    return shiftedIndex;
  }

  @override
  String toString() =>
      'DragStartIndex: $dragStartIndex, PhantomIndex: $phantomIndex, CurrentIndex: $currentIndex, NextIndex: $nextIndex';
}
