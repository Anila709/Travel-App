import 'package:flutter/material.dart';

class CustomCountryCategory extends StatelessWidget {
  const CustomCountryCategory({
    super.key,
    required this.cImage,
     this.cName="",
    this.cTap,
  });
  final String cName;
  final ImageProvider cImage;
  final VoidCallback? cTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        cTap;

      },
      child: Container(
        height: 70,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: cImage,
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Container(
              height: 70,
              width: 130,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.22)),
            ),
            Center(
              child: Text(
                cName,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}