import 'package:apollo19/pages/signin_page.dart';
import 'package:flutter/material.dart';

void main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignInPage(),
    );
  }
}
