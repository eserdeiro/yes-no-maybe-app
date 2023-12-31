import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/providers/conversation_provider.dart'; 
import 'package:yes_no_app/presentation/screens/chat/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => ConversationProvider())
      ],
      child: MaterialApp(
        theme: AppTheme(selectedColor: 1, brightness: 1).theme(),
        title: 'Yes No Maybe App',
        debugShowCheckedModeBanner: false,
        home: const HomeScreen()
      ),
    );
  }
}