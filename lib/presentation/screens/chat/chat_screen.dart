import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.arrow_back_outlined )
              ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg'),
            ),
            const SizedBox(width: 10),
            const Column(
              children: [
                Text('My love 🥰'),
                Text('Last time recently',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // const _ChatView({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                ?const MyMessageBubble() 
                :const HerMessageBubble();
              },
            )),
           //Message Field Box
           const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
