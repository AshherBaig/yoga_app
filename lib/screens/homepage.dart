import 'package:flutter/material.dart';
import 'package:yoga_app/customwidgets/customappbar.dart';
import 'package:yoga_app/customwidgets/customdrawer.dart';
import 'package:yoga_app/screens/startup.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _iconTween, _yogaTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNoti) {
    bool scroll = false;
    if (scrollNoti.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNoti.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNoti.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
          onNotification: scrollListner,
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(50, 120, 50, 30),
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    color: Colors.blue),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23),
                                        ),
                                        Text("Streak",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13))
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Text("179",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23)),
                                        Text("KCAL",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13))
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Text("12",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23)),
                                        Text("Minutes",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.fromLTRB(10, 20, 8, 1),
                                  child: const Text(
                                    "Yoga for all",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> StartUp()));
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                    Container(
                                      height: 150,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/1472887/pexels-photo-1472887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      )),
                                    ),
                                    Container(
                                      height: 150,
                                      color: Colors.black12,
                                    ),
                                    const Positioned(
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Yoga for beginners",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    const Positioned(
                                        left: 14,
                                        top: 35,
                                        child: Text(
                                          "Last workout: 16 May",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ))
                                  ]),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/3823063/pexels-photo-3823063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    )),
                                  ),
                                  Container(
                                    height: 150,
                                    color: Colors.black12,
                                  ),
                                  const Positioned(
                                      left: 10,
                                      top: 10,
                                      child: Text(
                                        "Yoga for loose weight",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const Positioned(
                                      left: 14,
                                      top: 35,
                                      child: Text(
                                        "Last workout: 16 May",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ))
                                ]),
                              ),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/999309/pexels-photo-999309.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    )),
                                  ),
                                  Container(
                                    height: 150,
                                    color: Colors.black12,
                                  ),
                                  const Positioned(
                                      left: 10,
                                      top: 10,
                                      child: Text(
                                        "Yoga for advance",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const Positioned(
                                      left: 14,
                                      top: 35,
                                      child: Text(
                                        "Last workout: 16 May",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ))
                                ]),
                              ),

                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.fromLTRB(10, 15, 8, 1),
                                  child: const Text(
                                    "Yoga for students",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1529693662653-9d480530a697?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1031&q=80"),
                                    )),
                                  ),
                                  Container(
                                    height: 150,
                                    color: Colors.black12,
                                  ),
                                  const Positioned(
                                      left: 10,
                                      top: 10,
                                      child: Text(
                                        "Yoga to increase concentration",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const Positioned(
                                      left: 14,
                                      top: 35,
                                      child: Text(
                                        "Last workout: 16 May",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ))
                                ]),
                              ),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://cdn.yogajournal.com/wp-content/uploads/2020/03/istock-930518524.jpg"),
                                    )),
                                  ),
                                  Container(
                                    height: 150,
                                    color: Colors.black12,
                                  ),
                                  const Positioned(
                                      left: 10,
                                      top: 10,
                                      child: Text(
                                        "Yoga for sharp mind and memory",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const Positioned(
                                      left: 14,
                                      top: 35,
                                      child: Text(
                                        "Last workout: 16 May",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ))
                                ]),
                              ),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://www.rebuildyourvision.com/wp-content/uploads/2018/08/Yoga-for-Eye-Health-1.jpg"),
                                    )),
                                  ),
                                  Container(
                                    height: 150,
                                    color: Colors.black12,
                                  ),
                                  const Positioned(
                                      left: 10,
                                      top: 10,
                                      child: Text(
                                        "Yoga for shoulder and eyes",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const Positioned(
                                      left: 14,
                                      top: 35,
                                      child: Text(
                                        "Last workout: 16 May",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ))
                                ]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CustomAppBar(
                        animationController: _animationController,
                        colorsTween: _colorTween,
                        drawerTween: _drawerTween,
                        homeTween: _homeTween,
                        iconTween: _iconTween,
                        yogaTween: _yogaTween,
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        })
                  ],
                ),
              )
            ],
          )),
    );
  }
}
