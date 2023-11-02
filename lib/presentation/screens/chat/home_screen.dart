import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Yes, No, Maybe APP'),
            const Spacer(),
            IconButton(onPressed: (){
              //TODO IMPLEMENT PROFILE
            },
            icon: const Icon(Icons.person_2_outlined)
            ),
          ],
        ),
      ),
      body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatScreen()),
            );
          },
          child: Container(
            height: size.height * 0.1,
            color: Color.fromARGB(21, 2, 100, 69),
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
                )
              ],
            ),
          ),
        )
    );
  }
}

