import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:recipeapp/profile/profile.dart';
//import 'package:recipeapp/sign_in/homepage.dart';
import 'package:recipeapp/widgets/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:recipeapp/main_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const WidgetTree(),
    );
  }
}
