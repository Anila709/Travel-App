import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_button.dart';
import 'package:travel_app/screens/splash_screen.dart';
import 'package:travel_app/style/colors.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
    padding: const EdgeInsets.only(left: 30,top: 80,right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Plan A Trip",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: CustomColors.bluedarker),
        ),
        Text(
          ' Lorem ipsum dolor sit amet, consectetur suidding \n addipiscing elit, sed diam nonummy nibg \n euismad itncidunt ut laarest dlore.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: CustomColors.greydarker,
          ),
        ),
        SizedBox(height: 15,),
        CustomButton(buttonHeight: 45, buttonName: 'Get started', buttonNameSize: 15.0, buttonWidth: 150,
        buttonShadow: BoxShadow(
              color: CustomColors.greymedium,
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3)),
         buttonTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SplashScreen()));
          },),
        
        Container(
          
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/100 * 72,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/welcome_screen3.png"),
            ),
          ),
        ),
      ],
    ),
      ),
    );
  }
}
