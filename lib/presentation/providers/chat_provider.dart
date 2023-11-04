import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/conversation_provider.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

//TODO FIX messageList

    List<Message> messageList =
      ConversationProvider().conversationList[0].messageList;
  Future<void> delayed({required int time}) async {
    await Future.delayed(Duration(milliseconds: time));
  }

//me send messages
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) receiveMessage();

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> receiveMessage() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }

//When user send message
  Future<void> moveScrollToBottom() async {
    await delayed(time: 100);
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.decelerate);
  }

  Future<void> clean() async {
    await delayed(time: 100);
    messageList.clear();
    notifyListeners();
  }
}
