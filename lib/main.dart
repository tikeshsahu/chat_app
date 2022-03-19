import 'package:chat_chat/screens/chatList_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/auth_page.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          backgroundColor: Colors.cyanAccent,
          buttonTheme: ButtonTheme.of(context).copyWith(
              buttonColor: Colors.cyan,
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
          if (userSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('Loading...'),
            );
          }
          if (userSnapshot.hasData) {
            return ChatPage();
          }
          return AuthPage();
        },
      ),
      routes: {
        ChatPage.routeName: (context) => const ChatPage(),
      },
    );
  }
}
