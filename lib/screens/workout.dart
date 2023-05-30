import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'breaktime.dart';

class WorkOutDet extends StatelessWidget {
  const WorkOutDet({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SecondModel(context),
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Image(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/999309/pexels-photo-999309.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover,
                ),
                Spacer(),
                Text(
                  "Anulom Vilom",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(" : ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Consumer<SecondModel>(
                        builder: (context, myModel, child) {
                          return Text(myModel.count.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold));
                        },
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Consumer<SecondModel>(
                  builder: (context, myModel, child) {
                    return ElevatedButton(
                        onPressed: () {
                          myModel.show();
                        }, child: Text("PAUSE"));
                  },
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Previous",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text("Next",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)))
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("NEXT : DAND BATHAK"),
                  ),
                )
              ],
            ),
          ),

Consumer<SecondModel>(
                        builder: (context, myModel, child) {
                          return Visibility(
            visible: myModel.visible,
            child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent.withOpacity(0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("PAUSE", style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
                  OutlinedButton(onPressed: (){}, child: Text("Restart", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  OutlinedButton(onPressed: (){}, child: Text("Quit", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  OutlinedButton(onPressed: (){
                      myModel.hide();
                  }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)), child: Text("RESUME", style:TextStyle(color: Colors.blueAccent, fontSize: 18),)),
              ],  
            ),
          ))
                      ;
                        },
                      ),



          
        ],
      )),
    );
  }
}

class SecondModel with ChangeNotifier {
  int count = 30;
  bool visible = false;

  SecondModel(context) {
    MyTimer(context);
  }

  MyTimer(context) async {
    // CallbackAction press;
    Timer.periodic(Duration(seconds: 1), (timer) {
      count--;
      if (count == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BreakTime()));
      }
      notifyListeners();
    });
  }

  show(){
    visible = true;
    notifyListeners();
  }

  hide(){
    visible = false;
    notifyListeners();
  }
}
