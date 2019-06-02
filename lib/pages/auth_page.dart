import 'package:fireflutter/widgets/auth_button.dart';
import 'package:flutter/material.dart';

enum AuthOptions {
  Google,
  email,
  phone,
  anonymously,
  Github,
  Facebook,
  Twitter
}

class AuthPage extends StatelessWidget {
  List<Widget> _returnAuthOptions() {
    List<Widget> allButtons = <Widget>[];
    AuthOptions.values.forEach((AuthOptions value) {
      allButtons.add(AuthButton(value.toString().split(".").last));
    });
    return allButtons;
  }

  @override
  Widget build(BuildContext context) {
    _returnAuthOptions();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _returnAuthOptions(),
        ),
      ),
    );
  }
}
