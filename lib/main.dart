import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';
import 'package:km_portfolio/View/CarrerWidget/CareerWidget.dart';
import 'package:km_portfolio/View/ContactWidget.dart';
import 'package:km_portfolio/View/HomeWidget.dart';
import 'package:km_portfolio/View/ProfileWidget.dart';
import 'package:km_portfolio/View/SkillsWidget.dart';
import 'package:km_portfolio/View/WorksWidget.dart';

void main() {
  runApp(const MKPortfolio());
}

class MKPortfolio extends StatelessWidget {

  const MKPortfolio({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minami\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: route.root,
      routes: <String, WidgetBuilder>{
        route.root: (BuildContext context) => const HomeWidget(),
        route.profile: (BuildContext context) => const ProfileWidget(),
        route.career: (BuildContext context) => CareerWidget.instance(),
        route.works: (BuildContext context) => const WorksWidget(),
        route.skills: (BuildContext context) => const SkillsWidget(),
        route.contact: (BuildContext context) => const ContactWidget(),
        }
    );
  }
}
