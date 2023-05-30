import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BreakTime extends StatelessWidget {
  const BreakTime({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThirdModel(),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/6455950/pexels-photo-6455950.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/3,),
              Text("Break Time", style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
              Text("20s", style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold),),
              ElevatedButton(
                onPressed: (){}, child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text("SKIP",),
                )),
                SizedBox(height: MediaQuery.of(context).size.height/4,),
              Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child: Text("Previous", style: TextStyle(color: Colors.white, fontSize: 16),)),
                TextButton(onPressed: (){}, child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 16)))
              ],
            ),
          ),
            ],
          ),
          ),
        ),
    );
  }
}

class ThirdModel with ChangeNotifier {
  int count = 20;

  MyTimer() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      count--;
      if (count == 0) {
        timer.cancel();
      }
    });
  }
}
