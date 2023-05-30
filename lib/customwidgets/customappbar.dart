import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  AnimationController animationController;
  Animation colorsTween, homeTween, yogaTween, iconTween, drawerTween;
  Function()? onPressed;

  CustomAppBar({
    required this.animationController,
    required this.colorsTween,
    required this.drawerTween,
    required this.homeTween,
    required this.iconTween,
    required this.yogaTween,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return AppBar(
            leading: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.dehaze, color: drawerTween.value,)),
              backgroundColor: colorsTween.value,
              elevation: 0,
              title: Row(
                children: [
                  Text("HOME", style: TextStyle(color: homeTween.value, 
                  fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("YOGA",style: TextStyle(color: yogaTween.value, 
                  fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
              actions: [
                Icon(Icons.notifications, color: iconTween.value,),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN7gtRwzTQBrFc7tLb3kq7Q-GwbbY0dg-zWQ&usqp=CAU"),
                    // backgroundColor: Colors.green,
                  ),
                )
              ],
          );
        },
      ),
    );
  }
}