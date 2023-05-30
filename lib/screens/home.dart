import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Yoga App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    Text("1"),
                    Text("Streak")
                  ],
                ),
                Column(
                  children: [
                    Text("179"),
                    Text("KCAL")
                  ],
                ),
                Column(
                  children: [
                    Text("12"),
                    Text("Minutes")
                  ],
                ),
              ],),
            )
        ,
        Divider(
          thickness: 1,
          indent: 25,
          endIndent: 25,
        ),
          
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Yoga for all"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.grey,
                height: 150,
                width: double.infinity,
              
              ),
            ),
            Text("Yoga for all"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.grey,
                height: 150,
                width: double.infinity,
                      
              ),
            ),
          ]),
        ),
          
          
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Yoga for students"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.grey,
                height: 150,
                width: double.infinity,
              
              ),
            ),
            Text("Yoga for students"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.grey,
                height: 150,
                width: double.infinity,
                      
              ),
            ),
          ]),
        ),
          
          ],
        ),
      )
    );
  }
}