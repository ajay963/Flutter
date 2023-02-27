import 'package:auth_flow/theme.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class KTextField extends StatelessWidget {
  final String label;
  final bool hideText;
  final IconData iconData;
  final TextEditingController controller;
  const KTextField(
      {Key? key,
      required this.label,
      required this.hideText,
      required this.iconData,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData();
    final TextTheme textTheme = ThemeData().textTheme;
    return TextField(
      controller: controller,
      obscureText: hideText,
      decoration: InputDecoration(
        label: Text(
          label,
          style: textTheme.bodyText1,
        ),
        prefixIcon: Icon(
          iconData,
          color: themeData.iconTheme.color,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kgreyShade1),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kshade2),
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  const EmailField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData();
    final TextTheme textTheme = ThemeData().textTheme;
    return TextField(
      controller: controller,
      obscureText: false,
      decoration: InputDecoration(
        fillColor: themeData.backgroundColor,
        label: Text(
          'EMAIL',
          style: textTheme.bodyText1,
        ),
        icon: Icon(
          LineIcons.envelope,
          color: themeData.iconTheme.color,
        ),
      ),
    );
  }
}
