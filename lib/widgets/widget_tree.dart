import 'package:recipeapp/auth/auth.dart';
//import 'package:recipeapp/sign_in/signin_page.dart';
import 'package:recipeapp/sign_in/login_register_page.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/main_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const MainPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
