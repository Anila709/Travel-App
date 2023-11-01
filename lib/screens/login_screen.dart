import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_button.dart';
import 'package:travel_app/custom_widgets/custom_textfield.dart';
import 'package:travel_app/screens/forgotPassword_screen.dart';
import 'package:travel_app/style/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            padding: const EdgeInsets.only(bottom: 360),
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
                        'Login',
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
                        height: 280,
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                          
                          CustomTextField(textFieldName: 'Email', textFieldIcon: Icons.email),
                          CustomTextField(textFieldName: 'Password', textFieldIcon: Icons.key),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                            },
                            child: Text('Forgot password ?',style: TextStyle(color: CustomColors.greymedium,fontWeight: FontWeight.normal,fontSize: 14,),)),
                          SizedBox(height: 20,),
                          
                          
                        ]),
                      ),
                    ],
                  ),
                ),
                CustomButton(buttonHeight: 45, buttonName: 'Login', buttonNameSize: 15, buttonWidth: 150, buttonTap: (){},buttonShadow: BoxShadow(
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
