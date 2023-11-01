import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: CustomColors.greymedium,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        prefixIconColor: Colors.black,
        labelText: 'Search',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        
        labelStyle: TextStyle(
            color: CustomColors.greymedium, fontFamily: 'Poppins'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        fillColor: CustomColors.greylishter,
        filled: true,
      ),
    );
  }
}
