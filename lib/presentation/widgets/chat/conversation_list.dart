import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/conversation.dart';

class ConversationList extends StatelessWidget {

  const ConversationList(BuildContext context);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      color: const Color.fromARGB(21, 2, 100, 69),
      child: const Row(
        children: [
          CircleAvatar(
            minRadius: 10,
            maxRadius: 30,
            backgroundImage: NetworkImage(
                'https://inmofotos.es/wp-content/uploads/2021/10/imagen-1_Mesa-de-trabajo-1.jpg'),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              Text('Example last message', style: TextStyle(fontSize: 10),)
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('10:45'),
              Text('1')
            ],
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}