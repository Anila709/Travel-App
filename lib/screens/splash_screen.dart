import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_button.dart';
import 'package:travel_app/screens/signup_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
    Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/splash_screen.jpg"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 140,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomButton(buttonHeight: 50, buttonName: 'Login', buttonNameSize: 18.0, buttonWidth: double.infinity, buttonTap: (){}),
            SizedBox(height: 20,),
             CustomButton(buttonHeight: 50, buttonName: 'Create Account', buttonNameSize: 18.0, buttonWidth: double.infinity, buttonTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
             }),
            
          ],
        ),
      ),
    ),
      ]),
    );
  }
}
