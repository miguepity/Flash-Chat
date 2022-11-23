import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        initialRoute: '/main',
        routes: {
          '/login': (context) => LoginScreen(),
          '/main': (context) => WelcomeScreen(),
          '/registration': (context) => RegistrationScreen(),
          '/chat': (context) => ChatScreen(),
        });
  }
}
