import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

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
        initialRoute: WelcomeScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          WelcomeScreen.id: (context) => WelcomeScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        });
  }
}
