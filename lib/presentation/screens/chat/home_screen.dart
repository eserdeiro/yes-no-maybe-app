import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/conversation_provider.dart';
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
            icon: const Icon(Icons.person_outline_outlined)
            ),
          ],
        ),
      ),
      body: _ConversationView()
        );
  }
}

 class _ConversationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final conversationProvider = context.watch<ConversationProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: conversationProvider.conversationList.length,
            itemBuilder: (context, index) {
              final list = conversationProvider.conversationList[index];
              return ConversationList(context, conversation: list, index: index);
            }
            ,
          )),
        ],
      ),
    );
  }
}


