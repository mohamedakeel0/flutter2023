import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';

import 'package:flutterg12023/core/resources/values_manager.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
class ItemCategoreWidget extends StatefulWidget {
  bool? isCategore=true;
  String? image;
  int?index;
   ItemCategoreWidget({this.isCategore,this.image,this.index,Key? key}) : super(key: key);

  @override
  State<ItemCategoreWidget> createState() => _ItemCategoreWidgetState();
}

class _ItemCategoreWidgetState extends State<ItemCategoreWidget> {
  bool select= false;
  @override
  void initState() {
    select= false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return InkWell(onTap: () {
      setState(() {
        print(select)  ;
        select =! select;

        print(select)  ;
      });
    },
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(    width: MediaQuery.of(context).size.width/AppResponsiveWidth.w50,
            height:  MediaQuery.of(context).size.height/AppResponsiveHeigh.h50,decoration:  BoxDecoration(
                color:widget.isCategore==true?select==true? AppColors.black:AppColors.gray2:AppColors.grayOp.withOpacity(0.3),

                borderRadius: BorderRadius.circular(10)
            ),child: Padding(
              padding:  EdgeInsets.all(widget.isCategore==true?10.0:8.0),
              child:  widget.isCategore==true?  Image.asset( imageHome[widget.index!].imageItem!,fit: BoxFit.cover):Image.asset( widget.image!,fit: BoxFit.cover),
            ),),
          widget.isCategore==true? Text(
            nameCateg[widget.index!],
            style: Theme.of(context).textTheme.headline5!.copyWith(color: select==true?AppColors.black: AppColors.gray,fontWeight:select==true?FontWeight.w500:FontWeight.w300,),
          ):SizedBox(),
        ],
      ),
    );
  }
}

