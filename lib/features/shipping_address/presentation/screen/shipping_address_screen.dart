import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';
import 'package:flutterg12023/core/resources/font_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';
import 'package:flutterg12023/core/utils/app_constance.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
import 'package:flutterg12023/features/shared_widget/app_bar_widget.dart';
import 'package:flutterg12023/features/shared_widget/my_divider_widget.dart';
import 'package:flutterg12023/features/shipping_address/presentation/widgets/item_shipping_widget.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    CustomAppBarWidget(AppStrings.shipAddress, context), body:
    ListView.builder(
        itemCount: shoppingModel.length,
        itemBuilder: (BuildContext context, int index) {
          return  ItemShippingWidget( index: index,);
        }),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        elevation: AppConstance.five0,
        backgroundColor: AppColors.white,
        child: const Icon(Icons.add, color: AppColors.black,),
      ),

    );
  }
}
