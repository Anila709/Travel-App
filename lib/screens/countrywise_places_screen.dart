import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_container.dart';

import 'package:travel_app/custom_widgets/custom_top_container.dart';

class CountryWisePlacesScreen extends StatelessWidget {
  CountryWisePlacesScreen({super.key});

  final List<Map<String, dynamic>> countryWisePlacesInfo = [
    {
      "placeImage": AssetImage('assets/images/niagara_falls_canada.jpg'),
      "placeName": "Niagara Falls",
      "countryName": "New York, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/rosewood_hotel_canada.jpg'),
      "placeName": "Rosewood Hotel Georgia",
      "countryName": "Vancouver, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/four_seasons_hotel_canada.jpg'),
      "placeName": "Four Seasons Hotel",
      "countryName": "Ontario, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/tofino_canada.jpg'),
      "placeName": "Tofino",
      "countryName": "British Columbia, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/niagara_falls_canada.jpg'),
      "placeName": "Niagara Falls",
      "countryName": "New York, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/rosewood_hotel_canada.jpg'),
      "placeName": "Rosewood Hotel Georgia",
      "countryName": "Vancouver, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/four_seasons_hotel_canada.jpg'),
      "placeName": "Four Seasons Hotel",
      "countryName": "Ontario, Canada",
    },
    {
      "placeImage": AssetImage('assets/images/tofino_canada.jpg'),
      "placeName": "Tofino",
      "countryName": "British Columbia, Canada",
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
              CustomTopContainer(
                topIcon: Icons.arrow_back_ios,
                topName: 'Best Place & Hotel in Canada',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 17, right: 17),
                child: SizedBox(
                  height: 650,
                  width: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 5),
                      itemCount: countryWisePlacesInfo.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            CostumContainer(
                                countryName: countryWisePlacesInfo[index]
                                    ["placeName"],
                                placeImage: countryWisePlacesInfo[index]
                                    ["placeImage"],
                                placeName: countryWisePlacesInfo[index]
                                    ["countryName"]),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
