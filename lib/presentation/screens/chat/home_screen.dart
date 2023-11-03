import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/providers/conversation_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';
import 'package:yes_no_app/presentation/widgets/chat/conversation_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Yes, No, Maybe APP'),
            const Spacer(),
            IconButton(onPressed: (){
              //TODO IMPLEMENT PROFILE
            },
            icon: const Icon(Icons.person_2_outlined)
            ),
          ],
        ),
      ),
      body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatScreen()),
            );
          },
          child: ConversationList(context)
          )
        );
  }
}


