import 'dart:html';

import 'package:app_p/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//App_project_1

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash_Screen());
        } else {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text('CPU'),
              ),
              body: Text('BODY'),
              bottomNavigationBar: BottomAppBar(
                child: Text('BOTTOM'),
              ),
            ),
          );
        }
      },
    );
  }
}
