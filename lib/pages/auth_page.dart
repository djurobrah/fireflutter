import 'package:fireflutter/widgets/auth_button.dart';
import 'package:flutter/material.dart';

enum AuthOptions {
  google,
  email,
  phone,
  anonymously,
  github,
  facebook,
  twitter
}

class AuthPage extends StatelessWidget {
  List<Widget> _returnAuthOptions() {
    List<Widget> allButtons = <Widget>[];
    AuthOptions.values.forEach((AuthOptions value) {
      allButtons.add(AuthButton(value));
    });
    return allButtons;
  }

  @override
  Widget build(BuildContext context) {
    _returnAuthOptions();
    return Scaffold(
      body: Center(
        child: Column(
          children: _returnAuthOptions(),
        ),
      ),
    );
  }
}