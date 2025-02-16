import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: double.infinity,
        //width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0568AE), Color(0xFF001E4D)],
          ),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
            bottom: Radius.circular(30),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      "Travel",
                      style: TextStyle(
                        fontSize: 44,
                        fontFamily: "Lobster",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Image.asset("/icons/globe_icon.png", height: 36, width: 36),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "Find Your Dream\nDestination With Us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  height: 1.55,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
