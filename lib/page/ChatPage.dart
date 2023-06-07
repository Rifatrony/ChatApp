// ignore_for_file: file_names

import 'package:chatapp/CustomUi/CustomCard.dart';
import 'package:chatapp/model/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Shakil",
      icon: "assets/person.svg",
      isGroup: false,
      time: "4:00",
      currentMessage: "Hi everyone",
    ),
    ChatModel(
      name: "My Group",
      icon: "assets/groups.svg",
      isGroup: true,
      time: "3:58",
      currentMessage: "Hi everyone",
    ),
    ChatModel(
      name: "Hridoy",
      icon: "assets/person.svg",
      isGroup: false,
      time: "3:50",
      currentMessage: "Hi everyone",
    ),
    ChatModel(
      name: "Shantu",
      icon: "assets/person.svg",
      isGroup: false,
      time: "3:27",
      currentMessage: "Hi everyone",
    ),
    ChatModel(
      name: "Polash",
      icon: "assets/person.svg",
      isGroup: false,
      time: "3:21",
      currentMessage: "Hi everyone",
    ),
    ChatModel(
      name: "Tuli",
      icon: "assets/person.svg",
      isGroup: false,
      time: "12:09",
      currentMessage: "Hi everyone",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return CustomCard(
              chatModel: chats[index],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}
