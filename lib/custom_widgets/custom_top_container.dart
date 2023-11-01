import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_search_field.dart';
import 'package:travel_app/style/colors.dart';

class CustomTopContainer extends StatelessWidget {
  const CustomTopContainer({
    super.key,
    required this.topIcon,
    required this.topName,
  });

  final String topName;
  final IconData topIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 17, right: 17),
      // height: MediaQuery.of(context).size.height / 100 * 20,
      height: 150,
      width: double.infinity,
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              topIcon,
              color: CustomColors.bluelishter,
            ),
            iconSize: 30,
            alignment: Alignment.centerLeft,
          ),
          Text(
            topName,
            style: TextStyle(
                color: CustomColors.bluelishter,
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ]),
        SizedBox(
          height: 50,
          child: CustomSearchField(),
        ),
      ]),
    );
  }
}
