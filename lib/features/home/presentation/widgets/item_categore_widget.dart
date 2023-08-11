import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';

import 'package:flutterg12023/core/resources/values_manager.dart';
import 'package:flutterg12023/core/utils/dumy.dart';

Widget ItemCategoreWidget(context,{bool isCategore=true,String? image,int?index})=>   Container(    width: MediaQuery.of(context).size.width/AppResponsiveWidth.w50,
height:  MediaQuery.of(context).size.height/AppResponsiveHeigh.h50,decoration:  BoxDecoration(
color:isCategore==true?index==0? AppColors.black:AppColors.gray2:AppColors.grayOp.withOpacity(0.2),

borderRadius: BorderRadius.circular(10)
),child: Padding(
  padding:  EdgeInsets.all(isCategore==true?12.0:8.0),
  child:   Image.asset(isCategore==true?  imageHome[index!]:image,fit: BoxFit.cover),
),);