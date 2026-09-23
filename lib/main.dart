import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:km_portfolio/core/router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MKPortfolio()));
}

class MKPortfolio extends StatelessWidget {

  const MKPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Minami\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: appRouter,
    );
  }
}
