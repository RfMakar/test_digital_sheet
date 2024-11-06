import 'package:flutter/material.dart';
import 'package:test_digital_sheet/config/router/router.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Отели',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
