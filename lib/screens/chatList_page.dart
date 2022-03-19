import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({ Key? key }) : super(key: key);
  static const routeName = '/chat_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      TextButton(onPressed: (){}, child: Text('Logout'))
      ),
    );
  }
}