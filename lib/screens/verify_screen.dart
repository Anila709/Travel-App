import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_button.dart';
import 'package:travel_app/custom_widgets/custom_textfield.dart';

import 'package:travel_app/style/colors.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

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
            padding: const EdgeInsets.only(bottom: 390),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
               
                Padding(
                  padding: const EdgeInsets.only(
                    top: 170,
                    left: 25,
                    right: 25,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Verification code',
                        style: TextStyle(
                          color: CustomColors.bluedarker,
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 170,
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
                          
                          CustomTextField(textFieldName: 'Enter Your Verification Code'),
                          Text('Resend (30s)',style: TextStyle(color: CustomColors.greymedium,fontWeight: FontWeight.normal,fontSize: 14,),),
      
                          SizedBox(height: 20,),
                          
                          
                        ]),
                      ),
                    ],
                  ),
                ),
                CustomButton(buttonHeight: 45, buttonName: 'Verify', buttonNameSize: 15, buttonWidth: 150, buttonTap: (){
                  Navigator.pop(context);
                  Navigator.pop(context);
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
