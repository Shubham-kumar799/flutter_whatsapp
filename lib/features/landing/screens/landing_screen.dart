import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/colors.dart';
import 'package:rivaan_whatsapp/common/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: size.height / 9,
            ),
            Image.network(
              'https://raw.githubusercontent.com/RivaanRanawat/flutter-whatsapp-clone/master/assets/bg.png',
              height: 340,
              width: 340,
              color: tabColor,
            ),
            SizedBox(
              height: size.height / 9,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Read our Privacy Policy. Tab \'Agree and Continue\' to accept the Terms of Service',
                style: TextStyle(
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
