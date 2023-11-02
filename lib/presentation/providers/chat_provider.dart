import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

List<Message> messageList = [
  Message(text: 'Welcome to a new flutter proyect', fromWho: FromWho.hers),
];

//me send messages
Future<void> sendMessage(String text) async{
  if(text.isEmpty) return;
 final newMessage = Message(text: text, fromWho: FromWho.me);
messageList.add(newMessage);
  if(text.endsWith('?')) {
    herReply();
  }
notifyListeners();
moveScrollToBottom();
}

//Her send messages, it func is a test 
// Future<void> receiveMessage(String text) async{
//  final newMessage = Message(text: text, fromWho: FromWho.hers);
//  messageList.add(newMessage);

// }

  Future<void>herReply() async {
  final herMessage = await getYesNoAnswer.getAnswer();
  messageList.add(herMessage);
  notifyListeners();
  moveScrollToBottom(); 
}

//When user send message
Future<void> moveScrollToBottom() async{
  await Future.delayed(const Duration(milliseconds: 100));
  chatScrollController.animateTo(
  chatScrollController.position.maxScrollExtent, 
  duration: const Duration(milliseconds: 300), 
  curve: Curves.decelerate
  );
}

Future<void> refresh() async{
  await Future.delayed(const Duration(milliseconds: 100));
  messageList.clear();
  notifyListeners();
}

}