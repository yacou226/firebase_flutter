import 'package:firebase_core/firebase_core.dart';
import 'package:firestoretest/SplashScreen.dart';
import 'package:firestoretest/alarmapp/acceil.dart';
import 'package:firestoretest/alarmapp/clock_view.dart';
import 'package:firestoretest/firebasetest.dart';
import 'package:firestoretest/homepage.dart';
import 'package:firestoretest/revision/views.dart';
import 'package:firestoretest/textfieldform.dart';
import 'package:firestoretest/views/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:    Textfielf(),
    );
  }
}





