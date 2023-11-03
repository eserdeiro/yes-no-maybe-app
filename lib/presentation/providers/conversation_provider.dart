import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/conversation.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ConversationProvider extends ChangeNotifier {
  List<Conversation> conversationList = [
    Conversation(
        profileImage:
            'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg',
        nameUser: 'My love 🥰',
        messageList: [
          Message(
              text: 'Welcome to a new flutter project', fromWho: FromWho.hers),
          Message(text: 'Ask me a question :)', fromWho: FromWho.hers),
          Message(text: 'Ask me a question :)', fromWho: FromWho.hers),
        ],
        lastMessage: 'test',
        date: '10:45',
        id: 99),
    Conversation(
        profileImage:
            'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg',
        nameUser: 'My Sis',
        messageList: [
          Message(
              text: 'Welcomdfge to a new flutter project',
              fromWho: FromWho.hers),
          Message(text: 'Ask mdfgdfe a question :)', fromWho: FromWho.hers),
          Message(text: 'Ask mdfgdfe a questsdion :)', fromWho: FromWho.hers),
        ],
        lastMessage: 'tedffst',
        date: '10:45',
        id: 0),
    Conversation(
        profileImage:
            'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg',
        nameUser: 'My Brother',
        messageList: [
          Message(
              text: 'Welcomdfge to a new flutter project',
              fromWho: FromWho.hers),
          Message(text: 'Ask mdfgdfe a question :)', fromWho: FromWho.hers),
        ],
        lastMessage: 'tedffst',
        date: '10:05',
        id: 1)
  ];
}
