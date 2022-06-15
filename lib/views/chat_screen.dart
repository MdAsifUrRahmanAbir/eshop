
import 'package:final_project/views/all_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/chat_controller.dart';
import 'all_screens.dart';


class ChatScreen extends StatelessWidget {
  static const rountename='/chat_screen';
   ChatScreen({Key? key}) : super(key: key);
  ChatController _controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          Get.offNamedUntil(HomeScreen.routeName, (route) => false);
        }, child: const Text('Continue shopping')),
      ),
    );
  }
}
