import 'package:flutter/material.dart';
import 'package:travel_app/screens/countrywise_places_screen.dart';
import 'package:travel_app/screens/forgotPassword_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/login_screen.dart';
import 'package:travel_app/screens/popular_destination_screen.dart';
import 'package:travel_app/screens/signup_screen.dart';
import 'package:travel_app/screens/splash_screen.dart';
import 'package:travel_app/screens/verify_screen.dart';
import 'package:travel_app/screens/welcome_screen.dart';



void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopularDestinationScreen(),
    );
  }
}