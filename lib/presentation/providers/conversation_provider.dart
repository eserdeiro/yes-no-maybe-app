import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/conversation.dart';

class ConversationProvider extends ChangeNotifier{
    List<Conversation> conversationList = [
    Conversation(imageUrl: 'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg', 
                 nameUser: 'My love 🥰', 
                 lastMessage: 'LastMessageTest', 
                 date: '10:45'),
  ];

}