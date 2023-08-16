import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppBarWidget(text,context)=>AppBar(
  title: Text(
    text,
    style: Theme.of(context).textTheme.subtitle1,
  ),leading: Icon(Icons.arrow_back_ios_new),);