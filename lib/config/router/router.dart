import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_digital_sheet/presentation/screen/select_number/selection_number.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SelectionNumberScreen();
      },
    ),
    
  ],
);