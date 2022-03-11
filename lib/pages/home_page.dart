import 'package:flutter/material.dart';
import 'package:pdpui_6/animation/fadeAnimation.dart';

class HomePage extends StatefulWidget {
  static final String id="HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ic_party.jpeg"),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    FadeAnimation(1, Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 45, fontWeight: FontWeight.bold),),),
                    SizedBox(height: 30,),
                    FadeAnimation(1.2, Text("Let us find you a tutorial for your interest", style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),),),
                    SizedBox(height: 150,),
                  ],
                ),
              ),
              _isLogin?
              FadeAnimation(1.5, Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[900],
                ),
                child: Center(
                  child: Text("Start",style: TextStyle(color: Colors.white, fontSize: 25),),
                ),
              )):
              FadeAnimation(1.5, Container(
                child: Row(
                  children: [
                    Expanded(child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text("Google",style: TextStyle(color: Colors.white, fontSize: 25),),
                      ),
                    )),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text("Facebook",style: TextStyle(color: Colors.white, fontSize: 25),),
                      ),
                    )),
                  ],
                ),
              )),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
