import 'package:flutter/material.dart';
import 'package:realtimechat2/socketio/ChatMessageModel.dart';
import 'package:realtimechat2/socketio/ChatTitle.dart';
import 'package:realtimechat2/socketio/Global.dart';
import 'package:realtimechat2/socketio/LoginScreen.dart';

import 'User.dart'; //โมเดมย่อมาจากอะไร

class ChatScreen extends StatefulWidget {
  static const String ROUTE_ID = "chat_screen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessageModel> _chatMessages;
  User _toChatUser;
  UserOnlineStatus _userOnlineStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _toChatUser = G.toChatUser;
    _userOnlineStatus = UserOnlineStatus.connecting;
  }

  _openLoginScreen(context) async{
    await Navigator.pushReplacementNamed(
      context, 
      LoginScreen.ROUTE_ID
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ChatTitle(toChatUser: G.toChatUser, userOnlineStatus: _userOnlineStatus),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){
          _openLoginScreen(context);
        })],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(

        ),
      ),
    );
  }
}