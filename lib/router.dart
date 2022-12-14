import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/common/widgets/error.dart';
import 'package:rivaan_whatsapp/features/auth/screens/login_screen.dart';
import 'package:rivaan_whatsapp/features/auth/screens/otp_screen.dart';
import 'package:rivaan_whatsapp/features/auth/screens/user_information_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (_) => OTPScreen(verificationId: verificationId),
      );
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const UserInformationScreen(),
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
