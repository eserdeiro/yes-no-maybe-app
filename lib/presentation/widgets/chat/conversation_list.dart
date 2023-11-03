import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/conversation.dart';

class ConversationList extends StatelessWidget {
  final Conversation conversation;
  const ConversationList(BuildContext context, {super.key, required this.conversation});

  @override
  Widget build(BuildContext context) {

     final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      color: const Color.fromARGB(21, 2, 100, 69),
      child:  Row(
        children: [
          CircleAvatar(
            minRadius: 10,
            maxRadius: 30,
            backgroundImage: NetworkImage(conversation.imageUrl),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(conversation.nameUser, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              Text(conversation.lastMessage, style: const TextStyle(fontSize: 10),)
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(conversation.date),
              const Text('1')
            ],
          ),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}