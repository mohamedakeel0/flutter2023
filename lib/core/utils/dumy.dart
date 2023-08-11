import 'package:flutterg12023/core/resources/assets_manager.dart';
import 'package:flutterg12023/core/resources/strings.dart';

List imageHome=[
  ImageAssets.star,
  ImageAssets.bed,
  ImageAssets.table,
  ImageAssets.bed1,
  ImageAssets.group,
  ImageAssets.bed,
  ImageAssets.table,
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