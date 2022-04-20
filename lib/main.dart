import 'package:firebase_core/firebase_core.dart';
import 'screens/signin.dart';
import 'package:flutter/material.dart';
import '../model/recipe_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider<RecipeProvider>(
      create: (context) => RecipeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // This is main file
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PC Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Signin(),
    );
  }
}