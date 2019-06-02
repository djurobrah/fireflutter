import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String authOption;

  AuthButton(this.authOption);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: 260,
      height: 40,
      child: RaisedButton(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _getAuthIcon(),
            SizedBox(width: 20),
            Expanded(child: Center(child: Text("Sign in with " + authOption))),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/conversations");
          //pushReplacementNamed needed
        },
      ),
    );
  }

  Widget _getAuthIcon() {
    String imagePath;

    switch (authOption) {
      case "Google":
        {
          imagePath = "assets/authIcons/google.png";
        }
        break;
      case "email":
        {
          imagePath = "assets/authIcons/google.png";
        }
        break;
      case "phone":
        {
          imagePath = "assets/authIcons/google.png";
        }
        break;
      case "anonymously":
        {
          imagePath = "assets/authIcons/google.png";
        }
        break;
      case "Github":
        {
          imagePath = "assets/authIcons/google.png";
        }
        break;
      case "Facebook":
        {
          imagePath = "assets/authIcons/facebook.png";
        }
        break;
      case "Twitter":
        {
          imagePath = "assets/authIcons/google.png";
        }
        break;
    }

    return Image.asset(
      imagePath,
      width: 25,
    );
  }
}
