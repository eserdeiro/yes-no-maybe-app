import 'package:yes_no_app/domain/entities/message.dart';

class Conversation {
  final String profileImage;
  final String nameUser;
  final List<Message> messageList;
  String lastMessage;
  final String date;
  final int id;

  Conversation({
    required this.profileImage, 
    required this.nameUser,
    required this.messageList,
    required this.lastMessage, 
    required this.date, 
    required this.id, 
    });
}