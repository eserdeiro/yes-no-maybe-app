import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/conversation.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ConversationProvider extends ChangeNotifier {
  List<Conversation> conversationList = [
    Conversation(
        profileImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEQbgxixS_H09L2JUcVWVOAiHuL8w-kERhNg',
        nameUser: 'My love 🥰',
        messageList: [
          Message(
              text: 'Welcome to a new flutter project', fromWho: FromWho.hers),
          Message(text: 'Ask me a question :)', fromWho: FromWho.hers),
        ],
        lastMessage: '',
        date: '12:45',
        id: 99),
    Conversation(
        profileImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTumr-ynIsoOEzb29PmGsYo5Dfem9Yio8dC8Q&usqp=CAU',
        nameUser: 'My Sis',
        messageList: [
          Message(
              text: 'Welcome to a new flutter project',
              fromWho: FromWho.hers),
          Message(text: 'Ask me a question :) two', fromWho: FromWho.hers), 
        ],
        lastMessage: '',
        date: '04:01',
        id: 0),
    Conversation(
        profileImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDvXvBhHHOMran8-dWfXgL3BZ-nzXvDwYLMA&usqp=CAU',
        nameUser: 'My Brother',
        messageList: [
          Message(
              text: 'Welcomdfge to a new flutter project',
              fromWho: FromWho.hers),
          Message(text: 'Ask mdfgdfe a question :) three', fromWho: FromWho.hers),
        ],
        lastMessage: '',
        date: '11:05',
        id: 1)
  ];
}