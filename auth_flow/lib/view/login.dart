import 'package:auth_flow/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = ThemeData().textTheme;
    TextEditingController emailCtr = TextEditingController();
    TextEditingController psdCtr = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Login', style: txtTheme.headlineMedium),
          EmailField(controller: emailCtr),
          TextField(controller: psdCtr),
        ],
      ),
    );
  }
}
