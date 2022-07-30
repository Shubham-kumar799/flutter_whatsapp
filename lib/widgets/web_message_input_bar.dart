import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/colors.dart';

class WebMessageInputBar extends StatelessWidget {
  const WebMessageInputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_file, color: Colors.grey),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Type you message here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
