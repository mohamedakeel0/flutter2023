


import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/strings.dart';
import 'package:flutterg12023/features/home/presentation/screen/home_screen.dart';
class Routes{
  static const String homeRoute ='/home';



}
class RouteGenerator{
  static Route<dynamic>  getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_)=>const HomeScreen());



      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic>unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title:const Text(AppStrings.noRoutefound),),body:const Center(child: Text(AppStrings.noRoutefound),),
    ));
  }
}