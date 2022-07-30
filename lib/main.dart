import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/colors.dart';
import 'package:rivaan_whatsapp/firebase_options.dart';
import 'package:rivaan_whatsapp/responsive/responsive_layout.dart';
import 'package:rivaan_whatsapp/screens/mobile_screen_layout.dart';
import 'package:rivaan_whatsapp/screens/web_screen_layout.dart';

//firebase console project => shubhamDemy-native
//35:30
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
