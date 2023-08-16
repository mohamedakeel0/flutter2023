import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/assets_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';
import 'package:flutterg12023/core/resources/values_manager.dart';
PreferredSizeWidget AppBarHomeWidget(context)=> AppBar(
    leading: Image(
      image: const AssetImage(ImageAssets.search),
      width: MediaQuery.of(context).size.width/AppResponsiveWidth.w60,
      height:  MediaQuery.of(context).size.height/AppResponsiveHeigh.h60,
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children:  [
        Text(
          AppStrings.titleHome,
          style: Theme.of(context).textTheme.headline5,
        ),

        Text(
          AppStrings.titleHome2,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],),
    ),actions: [
  Image(
    image: const AssetImage(ImageAssets.cart),
    width: MediaQuery.of(context).size.width/AppResponsiveWidth.w60,
    height:  MediaQuery.of(context).size.height/AppResponsiveHeigh.h60,
  )
]);