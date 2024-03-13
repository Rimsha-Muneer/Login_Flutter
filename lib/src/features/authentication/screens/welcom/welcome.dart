import 'package:auth/src/constant/image_strings.dart';
import 'package:auth/src/features/authentication/screens/login/login.dart';
import 'package:auth/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(welcomeScreenImage), height: height*0.5,
              ),
              Column(
                children: [
                  Text(
                    "Hi",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "Let's put your creativity on the development highway",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: ()=> Get.to(()=> const LoginScreen()),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        side: BorderSide(color: Colors.black),
                        padding: EdgeInsets.symmetric(vertical: 12.0), ),
                      child: Text("login"),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: ()=> Get.to(()=> const  SignupScreen()), 
      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        side: BorderSide(color: Colors.black),
                        padding: EdgeInsets.symmetric(vertical: 12.0), ),
      
      
            
                      child: Text("Sign Up"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
