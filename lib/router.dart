import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/common/widgets/error.dart';
import 'package:rivaan_whatsapp/features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: ErrorScreen(
            error: 'This page does not exists',
          ),
        ),
      );
  }
}
