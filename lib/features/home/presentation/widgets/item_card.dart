import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/assets_manager.dart';
import 'package:flutterg12023/core/resources/font_manager.dart';
import 'package:flutterg12023/core/resources/values_manager.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
import 'package:flutterg12023/features/home/presentation/widgets/item_categore_widget.dart';

Widget itemCardProduct(context,index)=>Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: MediaQuery.of(context).size.width /
              AppResponsiveWidth.w180,
          height: MediaQuery.of(context).size.height /
              AppResponsiveHeigh.h220,
          decoration: BoxDecoration(
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  titleItem[index].imageItem!,
                ),
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, bottom: 15.0),
          child: ItemCategoreWidget(
              isCategore: false, image: ImageAssets.shoppingBag),
        ),
      ],
    ),
    Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleItem[index].nameItem!,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: FontSize.s17),
          ),
          Text(
            titleItem[index].priceItem!,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontSize: FontSize.s17),
          )
        ],
      ),
    )
  ],
);