// ignore_for_file: file_names

import 'package:chatapp/page/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp Clone"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
            // print(value);
          }, itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: "New group",
                child: Text(
                  "New group",
                ),
              ),
              const PopupMenuItem(
                value: "New broadcast",
                child: Text(
                  "New broadcast",
                ),
              ),
              const PopupMenuItem(
                value: "Whatsapp Web",
                child: Text(
                  "Whatsapp Web",
                ),
              ),
              const PopupMenuItem(
                value: "Starred message",
                child: Text(
                  "Starred message",
                ),
              ),
              const PopupMenuItem(
                value: "Settings",
                child: Text(
                  "Settings",
                ),
              ),
            ];
          }),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text("Camera"),
          ChatPage(),
          Text("Status"),
          Text("Calls"),
        ],
      ),
    );
  }
}
