import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';



class CustomButton extends StatelessWidget {
   const CustomButton({
    super.key,
    required this.buttonHeight,
    required this.buttonName,
    required this.buttonNameSize,
    this.buttonShadow=const BoxShadow(color: Colors.white,spreadRadius: 0.0,blurRadius: 0.0,offset: Offset(0, 0)),
    required this.buttonWidth,
    required this.buttonTap,
  });

  final String buttonName;
  final double buttonHeight;
  final double buttonWidth;
  final BoxShadow buttonShadow; 
  final double buttonNameSize;
  final VoidCallback buttonTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(boxShadow: [
          buttonShadow
          
        ], borderRadius: BorderRadius.circular(30), color: CustomColors.orangelighter),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: buttonNameSize,
            ),
          ),
        ),
      ),
    );
  }
}
