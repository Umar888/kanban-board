import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class BoardOverlayEntry {
  BoardOverlayEntry({
    required this.builder,
    bool opaque = false,
  }) : _opaque = opaque;
  final WidgetBuilder builder;
  bool get opaque => _opaque;
  bool _opaque;

  BoardOverlayState? _overlay;
  final GlobalKey<_OverlayEntryWidgetState> _key =
      GlobalKey<_OverlayEntryWidgetState>();

  set opaque(bool value) {
    if (_opaque == value) return;

    _opaque = value;
    assert(_overlay != null);
    _overlay!._didChangeEntryOpacity();
  }
  void remove() {
    assert(_overlay != null, 'Should only call once');
    final BoardOverlayState overlay = _overlay!;
    _overlay = null;
    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance.addPostFrameCallback((Duration duration) {
        overlay._remove(this);
      });
    } else {
      overlay._remove(this);
    }
  }
  void markNeedsBuild() {
    _key.currentState?._markNeedsBuild();
  }
}
class BoardOverlay extends StatefulWidget {
  const BoardOverlay({
    super.key,
    this.initialEntries = const <BoardOverlayEntry>[],
  });

  final List<BoardOverlayEntry> initialEntries;

  static BoardOverlayState of(
    BuildContext context, {
    Widget? debugRequiredFor,
  }) {
    final BoardOverlayState? result =
        context.findAncestorStateOfType<BoardOverlayState>();
    assert(() {
      if (debugRequiredFor != null && result == null) {
        final String additional = context.widget != debugRequiredFor
            ? '\nThe context from which that widget was searching for an overlay was:\n  $context'
            : '';
        throw FlutterError('No Overlay widget found.\n'
            '${debugRequiredFor.runtimeType} widgets require an Overlay widget ancestor for correct operation.\n'
            'The most common way to add an Overlay to an application is to include a MaterialApp or Navigator widget in the runApp() call.\n'
            'The specific widget that failed to find an overlay was:\n'
            '  $debugRequiredFor'
            '$additional');
      }
      return true;
    }());
    return result!;
  }

  @override
  BoardOverlayState createState() => BoardOverlayState();
}

class BoardOverlayState extends State<BoardOverlay>
    with TickerProviderStateMixin {
  final List<BoardOverlayEntry> _entries = <BoardOverlayEntry>[];

  @override
  void initState() {
    super.initState();
    insertAll(widget.initialEntries);
  }

  void insert(BoardOverlayEntry entry, {BoardOverlayEntry? above}) {
    assert(entry._overlay == null);
    assert(
      above == null || (above._overlay == this && _entries.contains(above)),
    );
    entry._overlay = this;
    setState(() {
      final int index =
          above == null ? _entries.length : _entries.indexOf(above) + 1;
      _entries.insert(index, entry);
    });
  }

  void insertAll(
    Iterable<BoardOverlayEntry> entries, {
    BoardOverlayEntry? above,
  }) {
    assert(
      above == null || (above._overlay == this && _entries.contains(above)),
    );
    if (entries.isEmpty) return;

    for (final entry in entries) {
      assert(entry._overlay == null);
      entry._overlay = this;
    }
    setState(() {
      final int index =
          above == null ? _entries.length : _entries.indexOf(above) + 1;
      _entries.insertAll(index, entries);
    });
  }

  void _remove(BoardOverlayEntry entry) {
    if (mounted) {
      setState(() {
        _entries.remove(entry);
      });
    }
  }

  void _didChangeEntryOpacity() {
    // We use the opacity of the entry in our build function, which means state has changed.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // These lists are filled backwards. For the offstage children that
    // does not matter since they aren't rendered, but for the onstage
    // children we reverse the list below before adding it to the tree.
    final List<Widget> onstageChildren = <Widget>[];
    final List<Widget> offstageChildren = <Widget>[];
    bool onstage = true;
    for (int i = _entries.length - 1; i >= 0; i -= 1) {
      final BoardOverlayEntry entry = _entries[i];
      if (onstage) {
        onstageChildren.add(_OverlayEntryWidget(entry));
        if (entry.opaque) onstage = false;
      }
    }
    return _BoardStack(
      onstage: Stack(
        // HanSheng changed it to passthrough so that this widget doesn't change layout constraints
        fit: StackFit.passthrough,
        children: onstageChildren.reversed.toList(growable: false),
      ),
      offstage: offstageChildren,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<List<BoardOverlayEntry>>('entries', _entries));
  }
}

class _OverlayEntryWidget extends StatefulWidget {
  _OverlayEntryWidget(this.entry) : super(key: entry._key);

  final BoardOverlayEntry entry;

  @override
  _OverlayEntryWidgetState createState() => _OverlayEntryWidgetState();
}

class _OverlayEntryWidgetState extends State<_OverlayEntryWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.entry.builder(context);
  }

  void _markNeedsBuild() {
    setState(() {});
  }
}
class _BoardStack extends RenderObjectWidget {
  const _BoardStack({
    required this.offstage,
    this.onstage,
  });

  final List<Widget> offstage;
  final Stack? onstage;

  @override
  _BoardStackElement createElement() => _BoardStackElement(this);

  @override
  _RenderBoardObject createRenderObject(BuildContext context) =>
      _RenderBoardObject();
}

class _BoardStackElement extends RenderObjectElement {
  _BoardStackElement(_BoardStack super.widget)
      : assert(!debugChildrenHaveDuplicateKeys(widget, widget.offstage));

  static const Object _onstageSlot = Object();

  Element? _onstage;
  late List<Element> _offstage;
  final Set<Element> _forgottenOffstageChildren = HashSet<Element>();

  @override
  _BoardStack get widget => super.widget as _BoardStack;

  @override
  _RenderBoardObject get renderObject =>
      super.renderObject as _RenderBoardObject;

  @override
  void insertRenderObjectChild(RenderBox child, dynamic slot) {
    assert(renderObject.debugValidateChild(child));
    if (slot == _onstageSlot) {
      assert(child is RenderStack);
      renderObject.child = child as RenderStack?;
    } else {
      assert(slot == null || slot is Element);
      renderObject.insert(child, after: slot?.renderObject);
    }
  }

  @override
  void moveRenderObjectChild(RenderBox child, dynamic oldSlot, dynamic slot) {
    if (slot == _onstageSlot) {
      renderObject.remove(child);
      assert(child is RenderStack);
      renderObject.child = child as RenderStack?;
    } else {
      assert(slot == null || slot is Element);
      if (renderObject.child == child) {
        renderObject.child = null;
        renderObject.insert(child, after: slot?.renderObject);
      } else {
        renderObject.move(child, after: slot?.renderObject);
      }
    }
  }

  @override
  void removeRenderObjectChild(RenderBox child, dynamic slot) {
    if (renderObject.child == child) {
      renderObject.child = null;
    } else {
      renderObject.remove(child);
    }
  }

  @override
  void visitChildren(ElementVisitor visitor) {
    if (_onstage != null) visitor(_onstage!);
    for (final child in _offstage) {
      if (!_forgottenOffstageChildren.contains(child)) visitor(child);
    }
  }

  @override
  void debugVisitOnstageChildren(ElementVisitor visitor) {
    if (_onstage != null) visitor(_onstage!);
  }

  @override
  void forgetChild(Element child) {
    if (child == _onstage) {
      _onstage = null;
    } else {
      assert(_offstage.contains(child));
      assert(!_forgottenOffstageChildren.contains(child));
      _forgottenOffstageChildren.add(child);
    }
    super.forgetChild(child);
  }

  @override
  void mount(Element? parent, dynamic newSlot) {
    super.mount(parent, newSlot);
    _onstage = updateChild(_onstage, widget.onstage, _onstageSlot);
    _offstage = [];
  }

  @override
  void update(_BoardStack newWidget) {
    super.update(newWidget);
    assert(widget == newWidget);
    _onstage = updateChild(_onstage, widget.onstage, _onstageSlot);
    _offstage = updateChildren(
      _offstage,
      widget.offstage,
      forgottenChildren: _forgottenOffstageChildren,
    );
    _forgottenOffstageChildren.clear();
  }
}
class _RenderBoardObject extends RenderBox
    with
        RenderObjectWithChildMixin<RenderStack>,
        RenderProxyBoxMixin<RenderStack>,
        ContainerRenderObjectMixin<RenderBox, StackParentData> {
  @override
  void setupParentData(RenderObject child) {
    if (child.parentData is! StackParentData) {
      child.parentData = StackParentData();
    }
  }

  @override
  void redepthChildren() {
    if (child != null) {
      redepthChild(child!);
    }
    super.redepthChildren();
  }

  @override
  void visitChildren(RenderObjectVisitor visitor) {
    if (child != null) {
      visitor(child!);
    }
    super.visitChildren(visitor);
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    final List<DiagnosticsNode> children = <DiagnosticsNode>[];

    if (child != null) children.add(child!.toDiagnosticsNode(name: 'onstage'));

    if (firstChild != null) {
      RenderBox child = firstChild!;

      int count = 1;
      while (true) {
        children.add(
          child.toDiagnosticsNode(
            name: 'offstage $count',
            style: DiagnosticsTreeStyle.offstage,
          ),
        );
        if (child == lastChild) break;
        final StackParentData childParentData =
            child.parentData! as StackParentData;
        child = childParentData.nextSibling!;
        count += 1;
      }
    } else {
      children.add(
        DiagnosticsNode.message(
          'no offstage children',
          style: DiagnosticsTreeStyle.offstage,
        ),
      );
    }
    return children;
  }

  @override
  void visitChildrenForSemantics(RenderObjectVisitor visitor) {
    if (child != null) {
      visitor(child!);
    }
  }
}
