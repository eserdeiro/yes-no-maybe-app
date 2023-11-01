import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key,
    required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();  

    final focusNode = FocusNode(); 

    final outlineBorder = UnderlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(color: Colors.transparent));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with "?"',
      enabledBorder: outlineBorder,
      focusedBorder: outlineBorder,
      filled: true,
      suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
            onValue(textValue);
          }),
    );

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          print('Submit Value $value');
          textController.clear();
          focusNode.requestFocus();
          onValue(value);
        },
        //onChanged: (value) { },
      ),
    );
  }
}
