import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  
  const ChatScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          _PopupMenu()
        ],
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Text('My love 🥰'),
                Text('Last time recently',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        titleSpacing: 0,
      ),
      body: _ChatView(),
    );
  }
}

class _PopupMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    
    return PopupMenuButton(itemBuilder: (BuildContext context) {
      
      return [
        const PopupMenuItem(
          value: 'clean', 
          child: Text('Clean chat')),
        const PopupMenuItem(
          //TODO IMPLEMENT THIS
          value: 'theme',
          child: Text('Theme'),
        ),
        const PopupMenuItem(
          //TODO IMPLEMENT THIS
          value: 'color',
          child: Text('Color'),
        )
      ];
    },
    onSelected: (value){
      switch(value){
        case 'clean' : chatProvider.clean(); break;
        case 'theme' : break;
        case 'color' : break;
      }
    },
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.hers)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble(message: message);
              },
            )),
            //Message Field Box
            MessageFieldBox(
                //onValue:(value) => chatProvider.sendMessage(value),
                onValue: chatProvider.sendMessage)
          ],
        ),
      ),
    );
  }
}
