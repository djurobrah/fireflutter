import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireflutter/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<FirebaseUser>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _returnAuthOptions(context),
        ),
      ),
    );
  }
  
  void signIn(BuildContext context)
  {
    FirebaseAuth.instance.signInAnonymously();
    Navigator.pushNamed(context, "/conversations");
  }
  
  List<Widget> _returnAuthOptions(BuildContext context) {
    List<Widget> allButtons = <Widget>[];
    AuthOptions.values.forEach((AuthOptions value) {
      allButtons.add(AuthButton(value.toString().split(".").last, signIn));
    });
    return allButtons;
  }
  
}