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
            Expanded(child: Center(child: Text(_getButtonText()))),
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
    return Image.asset(
      "assets/authIcons/" + authOption + ".png",
      width: 25,
    );
  }
  
  String _getButtonText()
  {
    if(authOption == "anonymously")
    {
      return "Sign in " + authOption;
    }
    return "Sign in with " + authOption;
  }
}
