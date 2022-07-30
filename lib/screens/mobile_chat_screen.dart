import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/colors.dart';
import 'package:rivaan_whatsapp/info.dart';
import 'package:rivaan_whatsapp/widgets/chat_list.dart';
import 'package:rivaan_whatsapp/widgets/mobile_message_input_bar.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          Expanded(
            child: ChatList(),
          ),
          MobileMessageInputBar(),
        ],
      ),
    );
  }
}
