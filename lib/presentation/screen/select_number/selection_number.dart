import 'package:flutter/material.dart';
import 'package:test_digital_sheet/core/functions/test_repo.dart';

class SelectionNumberScreen extends StatelessWidget {
  const SelectionNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: testRepo, child: Text('test')),
      ),
    );
  }
}
