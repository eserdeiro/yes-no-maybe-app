import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:
                Text(message.text, style: const TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        //Todo image
        _ImageBubble(image: message.imageUrl.toString()),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  
final String image;
  const _ImageBubble({required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
  if(image != 'null') {
  return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          image,
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: colors.secondary,
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Center(
                  child: Text(
                'Loading image...',
              )),
            );
          },
        ));
  } else {
  return SizedBox(height: 0);
  }
  
  }
}
