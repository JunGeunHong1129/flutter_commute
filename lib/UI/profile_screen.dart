import 'package:commute/controller/controller.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  final _controller = AController.to;

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Center(child: Text("Profile",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),),),
      SizedBox(height: 20,),
      ListTile(
        title: Text("User Uuid",
            style: TextStyle(
            fontWeight: FontWeight.bold,
        )),
        trailing: Text("${_controller.user.userId}"),
      ),
      ListTile(
        title: Text("이름",
            style: TextStyle(
            fontWeight: FontWeight.bold,
        )),
        trailing: Text("${_controller.user.name}"),
      ),
      ListTile(
        title: Text("최근 퇴근 시각",
            style: TextStyle(
            fontWeight: FontWeight.bold,
        )),
        trailing: Text("${_controller.dateTimeParseToString(_controller.user.offWorkTime)}"),
      )
    ],),);
  }
}
