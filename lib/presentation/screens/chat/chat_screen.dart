import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/providers/conversation_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  final int index;
  const ChatScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final conversationProvider = context.watch<ConversationProvider>();

    return Scaffold(
      appBar: AppBar(
        actions: [_PopupMenu()],
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  conversationProvider.conversationList[index].profileImage),
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Text(conversationProvider.conversationList[index].nameUser),
                const Text(
                  'Last time recently',
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
      body: ChatView(index: index),
    );
  }
}

class ChatView extends StatelessWidget {
  final int index;
  const ChatView({super.key, required this.index});

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
            MessageFieldBox(onValue: chatProvider.sendMessage)
          ],
        ),
      ),
    );
  }
}

class _PopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(value: 'clean', child: Text('Clean chat')),
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
      onSelected: (value) {
        switch (value) {
          case 'clean':
            chatProvider.clean();
            break;
          case 'theme':
            break;
          case 'color':
            break;
        }
      },
    );
  }
}
