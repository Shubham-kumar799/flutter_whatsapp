import 'package:flutter/material.dart';
import 'package:rivaan_whatsapp/colors.dart';

class MobileMessageInputBar extends StatelessWidget {
  const MobileMessageInputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Flexible(
            child: TextField(
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
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.currency_rupee_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.camera_alt,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 2,
            ),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: tabColor,
              child: IconButton(
                icon: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
          // IconButton(icon:const Icon(Icons.mic), onPressed: () {}, color: tabColor,),
        ],
      ),
    );
  }
}
