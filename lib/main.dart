import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_digital_sheet/application.dart';
import 'package:test_digital_sheet/core/functions/setup_dependencie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const Application());
}
