import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';

class CostumContainer extends StatelessWidget {
  const CostumContainer({
    super.key,
    required this.countryName,
    required this.placeImage,
    required this.placeName,
  });
  final String placeName;
  final String countryName;
  final ImageProvider placeImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: CustomColors.greymedium,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2))
        ],
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: placeImage, fit: BoxFit.fill),
      ),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                  ),
                  color: CustomColors.orangelighter,
                ),
                child: Icon(
                  Icons.bookmark_add_outlined,
                  color: Colors.white,
                  size: 20,
                )),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.white),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      placeName,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      countryName,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ]),
            ),
          ],
        )
      ]),
    );
  }
}
