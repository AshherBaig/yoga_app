import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://images.unsplash.com/flagged/photo-1564740930826-1aabf6c8a776?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
              )
            ),
          ),
          ListTile(
            title: Text("RESTART PROGRESS", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            leading: Icon(Icons.restart_alt, size: 28,),
          ),
          ListTile(
            title: Text("Share With Friends",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            leading: Icon(Icons.share,size: 28,),
          ),
          ListTile(
            title: Text("Rate Us",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            leading: Icon(Icons.star_rate,size: 28,),
          ),
          ListTile(
            title: Text("Feedback",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            leading: Icon(Icons.feedback_rounded,size: 28,),
          ),
          ListTile(
            title: Text("Privacy Policy",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            leading: Icon(Icons.privacy_tip,size: 28,),
          ),
          Divider(thickness: 2, indent: 30, endIndent: 30,),
          Center(child: Text("Version 1.0.0"),)
        ],
      ),
    );
  }
}