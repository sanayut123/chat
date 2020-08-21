import 'package:flutter/material.dart';
import 'package:realtimechat2/socketio/ChatScreen.dart';
import 'package:realtimechat2/socketio/Global.dart';
import 'package:realtimechat2/socketio/LoginScreen.dart';

import 'User.dart'; //โมเดมย่อมาจากอะไร

class ChatUsersScreen extends StatefulWidget {
  static const String ROUTE_ID = "chat_user_screen";
  @override
  _ChatUsersScreenState createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {
  List<User> _chatUsers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chatUsers = G.getUsersFor(G.loggedInUser);
  }

  _openChatScreen(context) async{
    await Navigator.pushNamed(
      context, 
      ChatScreen.ROUTE_ID
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Users"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount : _chatUsers.length,
                itemBuilder: (context,index){
                    User user = _chatUsers[index];
                    return ListTile(
                      onTap: (){
                        G.toChatUser = user;
                        _openChatScreen(context);
                      },
                      title: Text(user.name),
                      subtitle: Text('ID ${user.id} , Email ${user.email}'),
                    );
                  },                
                ),              
              ),
          ],
        ),
      ),
    );
  }
}