import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fot_test/ui/Constant/SmartKitColor.dart';


import 'clip_shadow_path.dart';

import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'dart:ui' as ui;

class DesignConfig {
  /* static int animationtime = 300;
  static int animationdelay = 400; */

  static Duration animationtime = Duration(milliseconds: 300);
  static Duration animationdelay = Duration(milliseconds: 400);

  static BoxDecoration innerDecoration(double iradius) {
    return BoxDecoration(
      /*
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(3, 3),
          blurRadius: 3,
        ),
        BoxShadow(
            color: salondarkshadow.withOpacity(0.5),
            offset: Offset(-6, -6),
            spreadRadius: 3),
        BoxShadow(color: Colors.white, offset: Offset(3, 3), blurRadius: 8),
        BoxShadow(
          color: salonbgcolor,
          offset: Offset(0, 0),
          spreadRadius: -2.0,
          blurRadius: 5,
        ),
      ],
     */

      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(3, 3),
          blurRadius: 3,
        ),
        BoxShadow(
            color: salondarkshadow.withOpacity(0.3),
            offset: Offset(-6, -6),
            spreadRadius: 3),
        BoxShadow(color: Colors.white, offset: Offset(3, 3), blurRadius: 8),
        BoxShadow(
          color: salonbgcolor,
          offset: Offset(0, 0),
          spreadRadius: -2.0,
          blurRadius: 5,
        ),
      ],
      borderRadius: BorderRadius.circular(iradius),
    );
  }

  static BoxDecoration innersliderCircleDecoration() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(-1, -1),
          blurRadius: 3,
        ),
        BoxShadow(
            color: salondarkshadow.withOpacity(0.3),
            offset: Offset(-6, -6),
            spreadRadius: 3),
        BoxShadow(color: Colors.white, offset: Offset(1, 1), blurRadius: 5),
        BoxShadow(
          color: salonbgcolor,
          offset: Offset(0, 0),
          spreadRadius: -2.0,
          blurRadius: 5,
        ),
      ],
      shape: BoxShape.circle,
    );
  }

  static BoxDecoration outersliderCircularDecoration(Color bgcolor) {
    return BoxDecoration(
        color: bgcolor,
        // color: salonbgcolor,
        boxShadow: [
          BoxShadow(
              color: salondarkshadow.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4,
              spreadRadius: 3),
          BoxShadow(
            color: salonbgcolor,
            offset: Offset(0, 0),
            spreadRadius: -2.0,
            blurRadius: 5,
          ),
        ],
        shape: BoxShape.circle);
  }

  static BoxDecoration outerDecoration(double iradius) {
    return BoxDecoration(
        color: salonbgcolor,
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 8,
            color: Colors.white,
            offset: Offset(
              -5,
              -5,
            ),
          ),
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            color: salonlightshadow,
            offset: Offset(
              -2,
              -2,
            ),
          ),
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 4,
            color: salondarkshadow,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
        /*gradient: LinearGradient(
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffc0c1c1), Color(0xffe4e5e5)],
        ),*/
        borderRadius: BorderRadius.all(Radius.circular(
          iradius,
        )));
  }

  static RoundedRectangleBorder roundedrectangleshape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  );

  static BoxDecoration outerDecorationService(double iradius, Color bgcolor) {
    return BoxDecoration(
        color: bgcolor,
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 8,
            color: Colors.white,
            offset: Offset(
              -5,
              -5,
            ),
          ),
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            color: salonlightshadow,
            offset: Offset(
              -2,
              -2,
            ),
          ),
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 4,
            color: salondarkshadow.withOpacity(0.5),
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(
          iradius,
        )));
  }

  static BoxDecoration outerCircularDecoration() {
    return BoxDecoration(
        color: salonbgcolor,
        boxShadow: [
          BoxShadow(
              color: salondarkshadow.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4,
              spreadRadius: 3),
          BoxShadow(
            color: salonbgcolor,
            offset: Offset(0, 0),
            spreadRadius: -2.0,
            blurRadius: 5,
          ),
        ],
        shape: BoxShape.circle);
    /* 
    return BoxDecoration(
        color: salonbgcolor,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 3,
            color: Colors.white,
            offset: Offset(
              -5,
              -5,
            ),
          ),
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 3,
            color: salonlightshadow,
            offset: Offset(
              -2,
              -2,
            ),
          ),
          BoxShadow(
            blurRadius: 2,
            color: salondarkshadow,
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
        shape: BoxShape.circle); */
  }

  static BoxDecoration outercolorCircularDecoration(Color circlecolor) {
    return BoxDecoration(
        color: circlecolor,
        boxShadow: [
          BoxShadow(
              color: salondarkshadow.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4,
              spreadRadius: 3),
          BoxShadow(
            color: salonbgcolor,
            offset: Offset(0, 0),
            spreadRadius: -2.0,
            blurRadius: 5,
          ),
        ],
        shape: BoxShape.circle);
  }

  static BoxDecoration outerCircularDecorationtest() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.white,
        offset: Offset(
          -1,
          -1,
        ),
      ),
      BoxShadow(
        blurRadius: 2,
        color: salondarkshadow.withOpacity(0.5),
        offset: Offset(
          3,
          3,
        ),
      ),
      BoxShadow(
        color: salonbgcolor,
        blurRadius: 2,
        offset: Offset(
          0,
          0,
        ),
      ),
    ], shape: BoxShape.circle);
  }

  static BoxDecoration outerCircularDecorationBtm() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.white,
        blurRadius: 5,
        spreadRadius: 5,
        offset: Offset(
          -1,
          -1,
        ),
      ),
      BoxShadow(
        blurRadius: 5,
        spreadRadius: 5,
        color: salondarkshadow.withOpacity(0.5),
        offset: Offset(
          3,
          3,
        ),
      ),
      BoxShadow(
        color: salonbgcolor,
        blurRadius: 2,
        offset: Offset(
          0,
          0,
        ),
      ),
    ], shape: BoxShape.circle);
  }

  static Widget setAppbar(
      String title, BuildContext context, bool isnotification) {
    double topheight = 160;
    return PreferredSize(
        child: Stack(
          children: [
            ClipShadowPath(
              clipper: BottomWaveClipper(),
              shadow: Shadow(
                  blurRadius: 5, color: salondarkshadow, offset: Offset(0, 5)),
              child: Container(
                height: topheight,
                width: double.maxFinite,
                color: salonappcolor,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Platform.isIOS?BackButton():Text(""),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6.merge(TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1)),
                    ),
                  ],
                ),
              ),
            ),
            if (isnotification)
              Positioned(
                  right: 20,
                  bottom: 10,
                  child:
                      SvgPicture.asset("assets/salon/svgimg/notification.svg")),
          ],
        ),
        preferredSize: Size.fromHeight(topheight));
  }


  static Widget bottomNavigationWidget(
      Function bottomNavbtnClick, int currentpage) {
    return Container(
      height: 80.0,
      decoration: new BoxDecoration(
        color: salonbgcolor,
        boxShadow: [
          BoxShadow(
            color: salondarkshadow,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: btmSelectedItem(
                0,
                "assets/salon/svgimg/${currentpage == 0 ? "btm_shome" : "btm_home"}.svg",
                currentpage == 0,
                bottomNavbtnClick,
                currentpage),
          ),
          Expanded(
              child: btmSelectedItem(
                  1,
                  "assets/salon/svgimg/${currentpage == 1 ? "btm_snearby" : "btm_nearby"}.svg",
                  currentpage == 1,
                  bottomNavbtnClick,
                  currentpage)),
          Expanded(
              child: btmSelectedItem(
                  2,
                  "assets/salon/svgimg/${currentpage == 2 ? "btm_scalendar" : "btm_calendar"}.svg",
                  currentpage == 2,
                  bottomNavbtnClick,
                  currentpage)),
          Expanded(
              child: btmSelectedItem(
                  3,
                  "assets/salon/svgimg/${currentpage == 3 ? "btm_schat" : "btm_chat"}.svg",
                  currentpage == 3,
                  bottomNavbtnClick,
                  currentpage)),
          Expanded(
              child: btmSelectedItem(
                  4,
                  "assets/salon/svgimg/${currentpage == 4 ? "btm_sprofile" : "btm_profile"}.svg",
                  currentpage == 4,
                  bottomNavbtnClick,
                  currentpage)),
        ],
      ),
    );
  }

  static Widget btmSelectedItem(int index, String icon, bool isselected,
      Function clickcallback, int currentpage) {

    return GestureDetector(
        onTap: () {
          if (!isselected) clickcallback(index);
        },
        child: AnimatedContainer(
          decoration: isselected
              ? DesignConfig.outerDecorationService(10, salonbgcolor)
              : BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                  10,
                ))),
          duration: Duration(milliseconds: 500),
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 14, bottom: 14, right: 10, left: 10),
          child: SvgPicture.asset(
            icon,
          ),
        ));
  }

  static BoxDecoration sliderInnerDecoration(double iradius) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(3, 3),
          blurRadius: 3,
        ),
        BoxShadow(
            color: salondarkshadow.withOpacity(0.3),
            offset: Offset(-3, -3),
            spreadRadius: 3),
        BoxShadow(color: Colors.white, offset: Offset(3, 3), blurRadius: 8),
        BoxShadow(
          color: salonbgcolor,
          offset: Offset(0, 0),
          spreadRadius: -2.0,
          blurRadius: 5,
        ),
      ],
      borderRadius: BorderRadius.circular(iradius),
    );
  }

  static BoxDecoration boxDecorationContainer(Color color, double radius) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
    );
  }

  static newInnerDecoration(double radius) {
    return ConcaveDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      colors: [salondarkshadow.withOpacity(0.5), salonlightshadow],
      depression: 10,
    );
  }

  static newInnerDecorationCircle() {
    return ConcaveDecoration(
      shape: CircleBorder(),
      colors: [salondarkshadow.withOpacity(0.5), salonlightshadow],
      depression: 10,
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      { double strokeWidth,
       double radius,
       Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}


class InnerShadow extends SingleChildRenderObjectWidget {
  const InnerShadow({
    Key key,
    this.blur = 10,
    this.color = Colors.black38,
    this.offset = const Offset(10, 10),
    Widget child,
  }) : super(key: key, child: child);

  final double blur;
  final Color color;
  final Offset offset;

  @override
  RenderObject createRenderObject(BuildContext context) {
    final _RenderInnerShadow renderObject = _RenderInnerShadow();
    updateRenderObject(context, renderObject);
    return renderObject;
  }

  @override
  void updateRenderObject(
      BuildContext context, _RenderInnerShadow renderObject) {
    renderObject
      ..color = color
      ..blur = blur
      ..dx = offset.dx
      ..dy = offset.dy;
  }
}

class _RenderInnerShadow extends RenderProxyBox {
   double blur;
   Color color;
   double dx;
   double dy;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;

    final Rect rectOuter = offset & size;
    final Rect rectInner = Rect.fromLTWH(
      offset.dx,
      offset.dy,
      size.width - dx,
      size.height - dy,
    );

    final Canvas canvas = context.canvas..saveLayer(rectOuter, Paint());
    context.paintChild(child, offset);
    final Paint shadowPaint = Paint()
      ..blendMode = BlendMode.srcATop
      ..imageFilter = ImageFilter.blur(sigmaX: blur, sigmaY: blur)
      ..colorFilter = ColorFilter.mode(color, BlendMode.srcOut);

    canvas
      ..saveLayer(rectOuter, shadowPaint)
      ..saveLayer(rectInner, Paint())
      ..translate(dx, dy);
    context.paintChild(child, offset);
    context.canvas..restore()..restore()..restore();
  }
}

class ConcaveDecoration extends Decoration {
  final ShapeBorder shape;
  final double depression;
  final List<Color> colors;

  ConcaveDecoration({
     this.shape,
     this.depression,
    this.colors,
  })  : assert(shape != null),
        assert(depression >= 0),
        assert(colors == null || colors.length == 2);

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) =>
      _ConcaveDecorationPainter(shape, depression, colors);

  @override
  EdgeInsetsGeometry get padding => shape.dimensions;
}

class _ConcaveDecorationPainter extends BoxPainter {
  ShapeBorder shape;
  double depression;
  List<Color> colors;

  _ConcaveDecorationPainter(this.shape, this.depression, this.colors) {
    colors ??= [Colors.black87, Colors.white];
  }

  @override
  void paint(
      ui.Canvas canvas, ui.Offset offset, ImageConfiguration configuration) {
    final rect = offset & configuration.size;
    final shapePath = shape.getOuterPath(rect);

    final delta = 16 / rect.longestSide;
    final stops = [0.5 - delta, 0.5 + delta];

    final path = Path()
      ..fillType = PathFillType.evenOdd
      ..addRect(rect.inflate(depression * 2))
      ..addPath(shapePath, Offset.zero);
    canvas.save();
    canvas.clipPath(shapePath);

    final paint = Paint()
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, depression);
    final clipSize = rect.size.aspectRatio > 1
        ? Size(rect.width, rect.height / 2)
        : Size(rect.width / 2, rect.height);
    for (final alignment in [Alignment.topLeft, Alignment.bottomRight]) {
      final shaderRect =
          alignment.inscribe(Size.square(rect.longestSide), rect);
      paint
        ..shader = ui.Gradient.linear(
            shaderRect.topLeft, shaderRect.bottomRight, colors, stops);

      canvas.save();
      canvas.clipRect(alignment.inscribe(clipSize, rect));
      canvas.drawPath(path, paint);
      canvas.restore();
    }
    canvas.restore();
  }
}
