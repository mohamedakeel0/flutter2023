import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';
import 'package:flutterg12023/core/resources/font_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';

import 'package:flutterg12023/core/resources/values_manager.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
import 'package:flutterg12023/features/home/presentation/widgets/item_categore_widget.dart';


Widget CategoreWidgets(context,{bool isCategore=true,String? image})=>  SizedBox(
  width: double.infinity,
  height: MediaQuery.of(context).size.height/AppResponsiveHeigh.h100,
  child: ListView.separated(
    padding: EdgeInsets.zero,
    itemBuilder: (context, index) {
      return  Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        ItemCategoreWidget(context,isCategore: isCategore,index: index),
        Text(
          nameCateg[index],
          style: Theme.of(context).textTheme.headline5!.copyWith(color: index==0?AppColors.black: AppColors.gray,fontWeight: index==0?FontWeight.w500:FontWeight.w300,),
        ),
      ],);
    },
    separatorBuilder: (context, index) => const SizedBox(
      width: 20,
    ),
    scrollDirection: Axis.horizontal,
    itemCount: imageHome.length,
  ),
);