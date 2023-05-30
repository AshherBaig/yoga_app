import 'package:flutter/material.dart';

class Congrates extends StatelessWidget {
  const Congrates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 25),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 10,
                      image: NetworkImage("https://img.freepik.com/premium-vector/gold-trophy-with-name-plate-winner-competition_68708-545.jpg?w=2000"))
                  ),
                ),
                Text("CONGRATULATIONS", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("16", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                      Text("Yoga Asans", style: TextStyle(fontSize: 18),)
                    ],
                  ),
            
                  Column(
                    children: [
                      Text("179", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                      Text("KCAL", style: TextStyle(fontSize: 18),)
                    ],
                  ),
            
                  Column(
                    children: [
                      Text("00:09", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                      Text("duration", style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/32,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text("DO IT AGAIN", style: TextStyle(fontSize: 18),)),
                  TextButton(onPressed: (){}, child: Text("SHARE", style: TextStyle(fontSize: 18),)),
                ],
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, top: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Rate This Yoga Asans", style: TextStyle(fontSize: 20),)),
            )
          ],
        ),
      ),
    );
  }
}