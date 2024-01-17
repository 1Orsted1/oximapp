import 'package:flutter/material.dart';

class FolderWidget extends StatelessWidget {
  const FolderWidget({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.sizeOf(context);
    final themeData = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: themeData.background.withOpacity(0.0),
        //border: Border.all(color: Colors.black)
      ),
      height: queryData.height / 2.3,
      child: PhysicalShape(
        clipper: WaveClipper(),
        color: color ?? Colors.yellow, //themeData.background,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: child,
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, size.height * -.2)
      ..quadraticBezierTo(
        0,
        0,
        size.width * .2,
        0,
      )
      ..lineTo(size.width * .8, 0)
      ..quadraticBezierTo(
        size.width,
        0,
        size.width,
        size.height * .2,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
