import 'package:fireflutter/pages/auth_page.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {

  final AuthOptions value;

  AuthButton(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 40,
      child: RaisedButton(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/glogo.png",
              width: 25,
            ),
            SizedBox(width: 20),
            Expanded(child: Center(child: Text(value.toString()))),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/conversations");
          //pushReplacementNamed needed
        },
      ),
    );
  }
}