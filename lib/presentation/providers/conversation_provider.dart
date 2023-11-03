import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/conversation.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

class ConversationProvider extends ChangeNotifier {
 
    List<Conversation> conversationList = [
    Conversation(imageUrl: 'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg', 
                 nameUser: 'My love 🥰', 
                 lastMessage: ChatProvider().getLastMessage(), 
                 date: '10:45',
                 id: 99)
  ];
  
}
