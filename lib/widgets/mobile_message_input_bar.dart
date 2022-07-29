import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/colors.dart';

class MobileMessageInputBar extends StatelessWidget {
  const MobileMessageInputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: mobileChatBoxColor,
        filled: true,
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Icon(
            Icons.emoji_emotions,
            color: Colors.grey,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
              Icon(
                Icons.attach_file,
                color: Colors.grey,
              ),
              Icon(
                Icons.money,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        hintText: 'Type a message',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
