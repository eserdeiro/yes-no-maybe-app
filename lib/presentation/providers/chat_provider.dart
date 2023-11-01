import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

List<Message> messageList = [
  Message(text: 'Hi', fromWho: FromWho.me),
    Message(text: 'Ya regresasteeee?', fromWho: FromWho.me),
      Message(text: 'Quiza', fromWho: FromWho.hers),
];

//It receives message 
Future<void> sendMessage(String text) async{
//TODO implement metod
}

}