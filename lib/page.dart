import 'package:flutter/material.dart';

import 'screen/activity_screen.dart';
import 'screen/article_screen.dart';
import 'screen/home_screen.dart';

class Page {
  final String title;
  final Icon icon;
  final String label;
  final Widget page;

  Page({this.title, this.icon, this.label, this.page});
}

List<Page> pages = [
  Page(
    icon: Icon(Icons.home),
    label: "Home",
    page: HomeScreen(),
    title: "หน้าแรก",
  ),
  Page(
    icon: Icon(Icons.home),
    label: "News",
    page: ArticleScreen(),
    title: "ข่าวสาร",
  ),
  Page(
    icon: Icon(Icons.local_activity),
    label: "activity",
    page: ActivityScreen(),
    title: "กิจกรรม",
  ),
];
