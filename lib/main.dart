import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/routes_manager.dart';
import 'package:flutterg12023/core/resources/theme_manager.dart';
import 'package:flutterg12023/features/home/presentation/screen/home_screen.dart';
import 'package:flutterg12023/features/shipping_address/presentation/screen/shipping_address_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: ShippingAddressScreen(),
    );
  }
}


