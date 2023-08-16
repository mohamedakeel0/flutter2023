import 'package:flutterg12023/core/resources/assets_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';

List <HomeModel>imageHome=<HomeModel>[
  HomeModel(imageItem:ImageAssets.star,isSelect: false),
  HomeModel(imageItem:ImageAssets.bed,isSelect: false),
  HomeModel(imageItem:ImageAssets.table,isSelect: false),
  HomeModel(imageItem:ImageAssets.bed1,isSelect: false),
  HomeModel(imageItem:ImageAssets.group,isSelect: false),
  HomeModel(imageItem:ImageAssets.bed,isSelect: false),

];

List nameCateg=[
  AppStrings.popular,
  AppStrings.chair,
  AppStrings.table,
  AppStrings.armchair,
  AppStrings.bed,
  AppStrings.popular,
  AppStrings.chair,
  AppStrings.table,

];
class HomeModel{
  String? imageItem;
  bool? isSelect;


  HomeModel({required this.imageItem, this.isSelect, });
}
List<ItemModel> titleItem=<ItemModel> [
  ItemModel(nameItem: AppStrings.item1,imageItem: ImageAssets.imageItem,priceItem:'\$12.00' ),
  ItemModel(nameItem: AppStrings.item2,imageItem: ImageAssets.maskGroup,priceItem:'\$25.00' ),
  ItemModel(nameItem: AppStrings.item3,imageItem: ImageAssets.dor,priceItem:'\$20.00' ),
  ItemModel(nameItem: AppStrings.item4,imageItem: ImageAssets.tam,priceItem:'\$50.00' ),
  ItemModel(nameItem: AppStrings.item1,imageItem: ImageAssets.imageItem,priceItem:'\$12.00' ),
  ItemModel(nameItem: AppStrings.item2,imageItem: ImageAssets.maskGroup,priceItem:'\$25.00' ),
  ItemModel(nameItem: AppStrings.item3,imageItem: ImageAssets.dor,priceItem:'\$20.00' ),
  ItemModel(nameItem: AppStrings.item4,imageItem: ImageAssets.tam,priceItem:'\$50.00' ),
];
class ItemModel{
  String? nameItem;
  String? priceItem;
  String? imageItem;

  ItemModel({this.nameItem, this.priceItem, this.imageItem});
}
class ShoppingModel{
  bool? isSelected;
  String? titleSelect;
  String? nameItem;
  String? titleItem;


  ShoppingModel({this.isSelected,this.titleSelect,this.nameItem,this.titleItem});
}
List<ShoppingModel>shoppingModel=[
  ShoppingModel(nameItem: AppStrings.nameItem,isSelected:false ,titleItem: AppStrings.titleItem,titleSelect: AppStrings.titleItemShip ),
  ShoppingModel(nameItem: AppStrings.nameItem,isSelected:false ,titleItem: AppStrings.titleItem,titleSelect: AppStrings.titleItemShip ),
  ShoppingModel(nameItem: AppStrings.nameItem,isSelected:false ,titleItem: AppStrings.titleItem,titleSelect: AppStrings.titleItemShip ),
];