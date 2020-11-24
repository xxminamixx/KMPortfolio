import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';
import 'package:km_portfolio/View/CarrerWidget/CareerWidget.dart';
import 'package:km_portfolio/View/ContactWidget.dart';
import 'package:km_portfolio/View/HomeWidget.dart';
import 'package:km_portfolio/View/ProfileWidget.dart';
import 'package:km_portfolio/View/SkillsWidget.dart';
import 'package:km_portfolio/View/WorksWidget.dart';

void main() {
  runApp(MKPortfolio());
}

class MKPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minami\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Const.route.root,
      routes: <String, WidgetBuilder>{
        Const.route.root: (BuildContext context) => HomeWidget(),
        Const.route.profile: (BuildContext context) => ProfileWidget(),
        Const.route.career: (BuildContext context) => CareerWidget.instance(),
        Const.route.works: (BuildContext context) =>  WorksWidget(),
        Const.route.skills: (BuildContext context) =>  SkillsWidget(),
        Const.route.contact: (BuildContext context) =>  ContactWidget(),
        }
    );
  }
}
