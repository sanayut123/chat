import 'package:realtimechat2/socketio/ChatScreen.dart';
import 'package:realtimechat2/socketio/ChatUsersScreen.dart';
import 'package:realtimechat2/socketio/LoginScreen.dart';

class Routes{

  static routes(){
    return{
      LoginScreen.ROUTE_ID:(contex) => LoginScreen(),
      ChatUsersScreen.ROUTE_ID:(contex) => ChatUsersScreen(),
      ChatScreen.ROUTE_ID:(context) => ChatScreen,
    };
  }

  static initScreen(){
    return LoginScreen.ROUTE_ID;
  }
}