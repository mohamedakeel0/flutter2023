import 'package:flutter/material.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';
import 'package:flutterg12023/core/resources/assets_manager.dart';
import 'package:flutterg12023/core/resources/font_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';
import 'package:flutterg12023/core/resources/values_manager.dart';
import 'package:flutterg12023/core/utils/dumy.dart';
import 'package:flutterg12023/features/home/presentation/widgets/appbar_widgets.dart';
import 'package:flutterg12023/features/home/presentation/widgets/categore_widgets.dart';
import 'package:flutterg12023/features/home/presentation/widgets/item_categore_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 25.0, right: 10.0, left: 10.0),
        child: Column(
          children: [
            CategoreWidgets(isCategore:
            true, ),
            SizedBox(
              height:
                  MediaQuery.of(context).size.height / AppResponsiveHeigh.h15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height /
                  AppResponsiveHeigh.h170 *
                  titleItem.length,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 1 / 2.0,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                children: List.generate(titleItem.length, (index) {
                  return Column(
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
                }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
