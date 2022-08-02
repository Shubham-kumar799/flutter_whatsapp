import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_whatsapp/colors.dart';
import 'package:rivaan_whatsapp/features/landing/screens/landing_screen.dart';
import 'package:rivaan_whatsapp/router.dart';
import 'package:rivaan_whatsapp/firebase_options.dart';
// import 'package:rivaan_whatsapp/responsive/responsive_layout.dart';
// import 'package:rivaan_whatsapp/screens/mobile_screen_layout.dart';
// import 'package:rivaan_whatsapp/screens/web_screen_layout.dart';

//firebase console project => shubhamDemy-native
//1:55:34
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingScreen(),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
    );
  }
}
