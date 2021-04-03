import 'package:flutter/material.dart';
import 'package:piperchatapp/models/message_model.dart';
import '../app_theme.dart';

Container buildChatComposer({TextEditingController messageController, Function sendMessage}) {

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.white,
    height: 100,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your message ...',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                ),
                // Icon(
                //   Icons.attach_file,
                //   color: Colors.grey[500],
                // )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: sendMessage,
          child: CircleAvatar(
            backgroundColor: MyTheme.kAccentColor,
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
