import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/screens/workout.dart';

class rUready extends StatelessWidget {
  const rUready({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
      create: (context) => TimerModel(context),
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 2 - 100,),
            Center(child: Text("ARE YOU READY?", style: TextStyle(fontSize: 28),)),
            SizedBox(height: 50,),
            Consumer<TimerModel>(builder:(context, myModel, child) => CircleAvatar(
              foregroundColor: Colors.blueGrey,
              radius: 40,
              child: Text(myModel.count.toString(), style: TextStyle(fontSize: 22),))),
              Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("NEXT : ANULOM VILOM"),
              ),
             
    
          ],)
        ),
      ),
    );
  }
}

class TimerModel with ChangeNotifier{
  TimerModel(context){
    MyTimer(context);
  }
int count = 5;

// ignore: non_constant_identifier_names
MyTimer(context) async
{
  Timer.periodic(Duration(seconds: 1), (timer) {
    count--;
    if(count == 0)
    {
      timer.cancel();
      // dispose();
      Navigator.push(context, MaterialPageRoute(builder: (context)=> WorkOutDet()));
    }
  notifyListeners();
   });
  
}
}