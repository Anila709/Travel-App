import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_button.dart';
import 'package:travel_app/custom_widgets/custom_textfield.dart';
import 'package:travel_app/screens/login_screen.dart';
import 'package:travel_app/style/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/signup_screen.jpg"),
                  ),
                ),
      
          child: Padding(
            padding: const EdgeInsets.only(bottom: 285),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
               
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    left: 25,
                    right: 25,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Create Account',
                        style: TextStyle(
                          color: CustomColors.bluedarker,
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.greydarker,spreadRadius: 1,blurRadius: 15,offset: Offset(3, 3)
                          )
                        ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          CustomTextField(textFieldName: 'Name', textFieldIcon: Icons.person),
                          CustomTextField(textFieldName: 'Email', textFieldIcon: Icons.email),
                          CustomTextField(textFieldName: 'Password', textFieldIcon: Icons.key),
                          CustomTextField(textFieldName: 'Confirm password', textFieldIcon: Icons.key),
                          SizedBox(height: 20,),
                        ]),
                      ),
                    ],
                  ),
                ),
                CustomButton(buttonHeight: 45, buttonName: 'Sign Up', buttonNameSize: 15, buttonWidth: 150, buttonTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },buttonShadow: BoxShadow(
                color: CustomColors.greydarker,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 2)),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
