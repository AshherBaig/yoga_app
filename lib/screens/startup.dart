import 'package:flutter/material.dart';
import 'package:yoga_app/screens/rUready.dart';
// import 'package:yoga_app/customwidgets/customappbar.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => rUready()));
      }, child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Text("START", style: TextStyle(fontSize: 18),))),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image(image: NetworkImage("https://images.pexels.com/photos/1472887/pexels-photo-1472887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), fit: BoxFit.cover),
              title: Text("All in one"),
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              
            ),
            expandedHeight: 200,
            // title: Text("All in one yoga"),
            pinned: true,
          ),

          SliverToBoxAdapter(
            child:  Column(
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 8,bottom: 8),
                        child: Text("20 mints | 16 Workouts", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                  Divider(thickness: 2,),
                  ListView.separated( 
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => Divider(
                      thickness: 2,
                    ),itemBuilder: (context, index) => 
                  ListTile(
                    leading: Image.network("https://i.gifer.com/OOQg.gif"),
                    title: Text("$index Yoga", style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text((index%2==0) ? "00:20" : "x20")),
                 itemCount: 10),
                ],
              )

            ],
          ),
          )

         
        ],
      )
    );
  }
}