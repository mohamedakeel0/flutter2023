import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';
import 'package:flutterg12023/core/resources/assets_manager.dart';
import 'package:flutterg12023/core/resources/font_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';
import 'package:flutterg12023/core/utils/app_constance.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
import 'package:flutterg12023/features/shared_widget/my_divider_widget.dart';

class ItemShippingWidget extends StatefulWidget {
  int? index ;
   ItemShippingWidget({Key? key,this.index}) : super(key: key);

  @override
  State<ItemShippingWidget> createState() => _ItemShippingWidgetState();
}

class _ItemShippingWidgetState extends State<ItemShippingWidget> {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
          children: [
            Row(children: [
              GestureDetector(onTap: () {
                setState(() {
                  for(int i = 0; i < shoppingModel.length; i++) {
                    if (i == widget.index) {
                      setState(() {
                        shoppingModel[widget.index!].isSelected = true;
                      });
                    } else {
                      setState(() {
                        shoppingModel[widget.index!].isSelected = false;
                      });
                    }
                  }
                });
              },
                  child: Icon(shoppingModel[widget.index!].isSelected == false
                      ? Icons.check_box_outline_blank_outlined
                      : Icons.check_box,
                    color: shoppingModel[widget.index!].isSelected == false ? AppColors.gray : AppColors
                        .black,)),
              const SizedBox(width: 10,),
              Text(
                shoppingModel[widget.index!].titleSelect!,
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(
                    fontSize: FontSize.s18,
                    fontWeight: FontWeight.w300,
                    color: shoppingModel[widget.index!].isSelected == false ? AppColors.gray : AppColors.black
                ),
              )
            ],),
            const SizedBox(height: 10.0,),
            Card(
              elevation: AppConstance.five0,
              shadowColor: AppColors.graySoft2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    AppConstance.five0),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(children: [

                        Text(

                          shoppingModel[widget.index!].nameItem!,

                          style: Theme
                              .of(context)
                              .textTheme
                              .subtitle1!,),

                        const Spacer(),
                        Image.asset(ImageAssets.edite,height: 25,width: 25,),


                      ],),
                    ),
                    myDivider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(

                        shoppingModel[widget.index!].titleItem!,

                        style: Theme
                            .of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(
                            fontSize: FontSize.s16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ]),)
          ]),
    );
  }
}
