import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class DiagonallyCutGradientHeader extends StatelessWidget {
  DiagonallyCutGradientHeader({@required this.gradient});


  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return new ClipPath(
       clipper: new DiagonalClipper(),
      child: new DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: new BoxDecoration(gradient: gradient),
        child: new Container(
          height: 300.0,
        ),
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 100.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}