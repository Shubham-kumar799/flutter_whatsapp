import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/widgets/chat_list.dart';
import 'package:rivaan_whatsapp/widgets/contacts_list.dart';
import 'package:rivaan_whatsapp/widgets/web_message_input_bar.dart';
import 'package:rivaan_whatsapp/widgets/web_chat_appbar.dart';
import 'package:rivaan_whatsapp/widgets/web_profile_bar.dart';
import 'package:rivaan_whatsapp/widgets/web_search_%20bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          //web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: const [
                WebChatAppBar(),
                Expanded(
                  child: ChatList(),
                ),
                WebMessageInputBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
