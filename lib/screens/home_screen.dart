import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_container.dart';
import 'package:travel_app/custom_widgets/custom_country_category.dart';
import 'package:travel_app/custom_widgets/custom_search_field.dart';
import 'package:travel_app/style/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> exploreImage = [
    {
      "image": AssetImage('assets/images/canada_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/china_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/india_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/indonesia_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/london_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/usa_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/australia_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/africa_explore.jpg'),
    },
    {
      "image": AssetImage('assets/images/canada1.jpg'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 17, right: 17),
                // height: MediaQuery.of(context).size.height / 100 * 20,
                height: 150,
                width: double.infinity,
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: CustomColors.bluelishter,
                      ),
                      iconSize: 30,
                      alignment: Alignment.centerLeft,
                    ),
                    Text(
                      'Home',
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
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                // height: MediaQuery.of(context).size.height / 100 * 6,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 1,
                      color: CustomColors.greylishter,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 1, left: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Show post",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 25,
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 17,
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height / 100 * 10,
                  height: 100,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/canada1.jpg'),
                          cName: 'Canada',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/usa1.jpg'),
                          cName: 'Usa',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/australia1.jpg'),
                          cName: 'Australia',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/africa1.jpg'),
                          cName: 'Africa',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/china1.jpg'),
                          cName: 'China',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/india1.jpg'),
                          cName: 'India',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomCountryCategory(
                          cImage: AssetImage('assets/images/indonesia1.jpg'),
                          cName: 'Indonesia',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  width: double.infinity,
                  height: 320,
                  // height: MediaQuery.of(context).size.height / 100 * 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Destination',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              color: CustomColors.greymedium,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      CostumContainer(
                        placeImage:
                            AssetImage('assets/images/banff_national_park.jpg'),
                        placeName: 'Banff National Park',
                        countryName: 'Canada',
                      ),
                      CostumContainer(
                        placeImage: AssetImage('assets/images/bali_indonesia.jpg'),
                        placeName: 'Bali',
                        countryName: 'Indonesia',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20, left: 17, right: 17),
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.only(top: 10),
                        shrinkWrap: true,
                          itemCount: exploreImage.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 150,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: exploreImage[index]["image"],
                                ),
                              ),
                            );
                          }),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
