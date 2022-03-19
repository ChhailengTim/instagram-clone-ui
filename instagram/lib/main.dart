import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/responsive/mobile_screen_layout.dart';
import 'package:instagram/responsive/responsive_layout.dart';
import 'package:instagram/responsive/web_screen_layout.dart';
import 'package:instagram/screen/login_screen.dart';
import 'package:instagram/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAkBLOaMh6lnGGqHvqJxi9AkQKAvU3_bvs",
        authDomain: "instagram-clone-3199b.firebaseapp.com",
        appId: "1:786983720558:web:1af1376f467cec73b2f87f",
        messagingSenderId: "786983720558",
        projectId: "instagram-clone-3199b",
        storageBucket: "instagram-clone-3199b.appspot.com",
      ),
    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: webScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}
