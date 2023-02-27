import 'package:auth_flow/theme.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final double radius;
  const CircularButton({Key? key, required this.icon, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color? iconColor = ThemeData().iconTheme.color;
    return InkWell(
      onTap: () {},
      child: Ink(
        height: radius,
        width: radius,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
                colors: [kshade1, kshade2],
                center: Alignment.topLeft,
                focal: Alignment.bottomRight)),
        child: Center(
            child: Icon(
          icon,
          color: iconColor ?? const Color(0xffFFFFFF),
        )),
      ),
    );
  }
}
