import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodtogo_customer/authentication/auth_screen.dart';
import 'package:foodtogo_customer/mainScreen/home_screen.dart';
import '../global/global.dart';




class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}




class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {


    Timer(const Duration(seconds: 4),()async{

      //if seller is already logged in

      if(firebaseAuth.currentUser != null)
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> const HomeScreen()));
      }
      //if rider is not logged in
      else
        {
          Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
        }


    });
  }

@override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(

      child: Container(
        color: Colors.black,
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(

                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/logo.png"),
              ),

              const   SizedBox(height: 10,),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Order Food Online with Food to Go",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontFamily: "Roboto",

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


