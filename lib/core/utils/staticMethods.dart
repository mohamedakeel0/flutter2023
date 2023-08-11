import 'dart:convert';
import 'dart:io';


 import 'package:flutter/services.dart';
import 'package:flutterg12023/core/resources/app_colors.dart';


void transparentStatusBar() {
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: AppColors.colorPrimaryDark);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
// Future<String> getBaseUrl()async{
// String? resultBase;
// String base = await CacheHelper.getData(key: 'baseUrl');
// BaseUrl baseUrl = BaseUrl.fromJson(jsonDecode(base));
// print('valllll${baseUrl.radioValue}');
// if(baseUrl.radioValue==0){
//
//   if(baseUrl.baseUrl==null||baseUrl.baseUrl==''){
//     resultBase=OLD_BASE_URL;
//
//   }else{
//     resultBase=baseUrl.baseUrl!+SERVER_URL;
//
//   }
// }else if(baseUrl.radioValue==1){
//
//   if(baseUrl.baseUrl==null ||baseUrl.baseUrl==''){
//     resultBase=NEW_BASE_URL;
//
//   }else{
//     resultBase=baseUrl.baseUrl!+SERVER_URL_NEW;
//
//   }
// }else{
//   resultBase='';
//   print('لما تيم اختيار السرفر');
// }
//
// return resultBase;
// }
