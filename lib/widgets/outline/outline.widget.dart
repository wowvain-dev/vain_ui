import 'package:flutter/widgets.dart';

import 'package:vector_math/vector_math_64.dart' as vectormath;

/// Importing the required internal shared dependencies.
import '../../shared/shared.dart';

/// A widget for imitating the focus behavior.
class VOutline extends StatefulWidget {
  const VOutline({
    Key? key,
    required this.child,
    this.color = VColors.white0,
    this.outlineWidth = 8,
    this.outlined = false,
    this.animationDuration = 250,
    this.borderRadius,
    this.animationCurve = Curves.easeInOut,
  }) : super(key: key);

  /// The widget that is wrapped with the outline widget.
  final Widget child;

  /// The focus color of the outline widget.
  final Color color;

  /// The width of the outline widget.
  final double outlineWidth;

  /// Whether the [child] is outlined/focused.
  final bool outlined;

  /// If non-null, the corners of the outline widget are
  /// rounded by this [BorderRadius].
  final BorderRadius? borderRadius;

  /// The length of time this animation should last.
  final int animationDuration;

  /// The curve to use in the forward direction.
  final Curve animationCurve;

  @override
  VOutlineWidgetState createState() => VOutlineWidgetState();
}

class VOutlineWidgetState extends State<VOutline>
    with TickerProviderStateMixin {
  final _itemKey = GlobalKey();

  Size? _size;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animationDuration),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: widget.animationCurve,
    );

    super.initState();
  }

  @override
  void didChangeDependencies() {
    _animationController.duration = Duration(
      milliseconds: widget.animationDuration,
    );

    _animation = CurvedAnimation(
        parent: _animationController, curve: widget.animationCurve);

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(oldWidget) {
    _calculateSize();

    if (widget.outlined) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }

    super.didUpdateWidget(oldWidget);
  }

  ///
  vectormath.Vector3 _calculateScaleVector(double outlineWidth) {
    var value = vectormath.Vector3(
      2 * outlineWidth / _size!.width,
      2 * outlineWidth / _size!.height,
      0.0,
    );

    return (value + vectormath.Vector3.all(1.0)) * _animation.value;
  }

  void _calculateSize() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_itemKey.currentContext?.size != _size) {
        setState(() {});
      }
      _size = _itemKey.currentContext?.size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.passthrough, children: <Widget>[
      if (_size != null)
        AnimatedBuilder(
          animation: _animation,
          builder: (_, __) {
            final scaleFactor = _calculateScaleVector(widget.outlineWidth);
            return Stack(alignment: Alignment.center, children: <Widget>[
              Opacity(
                  opacity: 1,
                  child: Transform(
                      transform: Matrix4.compose(
                        vectormath.Vector3.zero(),
                        vectormath.Quaternion.identity(),
                        scaleFactor,
                      ),
                      origin: Offset(_size!.width / 2.0, _size!.height / 2.0),
                      child: Container(
                          width: _size!.width,
                          height: _size!.height,
                          decoration: BoxDecoration(
                            color: widget.color,
                            borderRadius: widget.borderRadius,
                          ))))
            ]);
          },
        ),
      SizedBox(key: _itemKey, child: widget.child),
    ]);
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }
}
