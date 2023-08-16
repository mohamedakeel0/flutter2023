import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';
import 'package:flutterg12023/core/resources/font_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';

import 'package:flutterg12023/core/resources/values_manager.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
import 'package:flutterg12023/features/home/presentation/widgets/item_categore_widget.dart';
class CategoreWidgets extends StatefulWidget {
  bool? isCategore=true;
  String? image;
   CategoreWidgets({this.isCategore,this.image,Key? key}) : super(key: key);

  @override
  State<CategoreWidgets> createState() => _CategoreWidgetsState();
}

class _CategoreWidgetsState extends State<CategoreWidgets> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/AppResponsiveHeigh.h100,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  ItemCategoreWidget(isCategore: widget.isCategore!,index: index,image:  imageHome[index].imageItem,);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: imageHome.length,
      ),
    );
  }
}


