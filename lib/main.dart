import 'package:fireflutter/pages/auth_page.dart';
import 'package:fireflutter/pages/conversations_page.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser>.value(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      child: _buildMaterialApp(),
    );
  }

  Widget _buildMaterialApp() {
    return MaterialApp(
      title: 'FlutterFire practice',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.amberAccent,
            textTheme: ButtonTextTheme.primary),
      ),
      home: AuthPage(),
      routes: <String, WidgetBuilder>{
        '/conversations': (BuildContext context) => ConversationsPage(),
      },
    );
  }
}
