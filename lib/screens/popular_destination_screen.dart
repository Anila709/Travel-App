import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/custom_container.dart';

import 'package:travel_app/custom_widgets/custom_top_container.dart';


class PopularDestinationScreen extends StatelessWidget {
  PopularDestinationScreen({super.key});

  final List<Map<String, dynamic>> popularDestions = [
    {
      "placeImage": AssetImage('assets/images/banff_national_park.jpg'),
      "placeName": "Banff National Park",
      "countryName": "Canada",
    },
    {
      "placeImage": AssetImage('assets/images/bali_indonesia.jpg'),
      "placeName": "Bali",
      "countryName": "Indonesia",
    },
    {
      "placeImage": AssetImage('assets/images/amalfi_italy.jpg'),
      "placeName": "Amalfi",
      "countryName": "Italy",
    },
    {
      "placeImage": AssetImage('assets/images/eiffel_tower_france.jpg'),
      "placeName": "Eiffel Tower",
      "countryName": "France",
    },
    {
      "placeImage": AssetImage('assets/images/banff_national_park.jpg'),
      "placeName": "Banff National Park",
      "countryName": "Canada",
    },
    {
      "placeImage": AssetImage('assets/images/bali_indonesia.jpg'),
      "placeName": "Bali",
      "countryName": "Indonesia",
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
                topName: 'Popular Destination',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 17, right: 17),
                child: SizedBox(
                  height: 650,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                      padding: EdgeInsets.only(top: 5),
                      itemCount: popularDestions.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            CostumContainer(
                                countryName: popularDestions[index]["placeName"],
                                placeImage:
                                    popularDestions[index]["placeImage"],
                                placeName: popularDestions[index]["countryName"]),
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
