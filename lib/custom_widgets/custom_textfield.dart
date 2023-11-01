import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';

class CustomTextField extends StatelessWidget{
  const CustomTextField({super.key,required this.textFieldName, this.textFieldIcon});

  final String textFieldName;
  final IconData? textFieldIcon;

  @override
  Widget build(BuildContext context){
    return TextField(
                      decoration: InputDecoration(
                        labelText: textFieldName,
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: CustomColors.black,
                        ),
                        suffixIcon: Icon(textFieldIcon,color: CustomColors.bluelishter,)
                      ),
                    );
  }
}