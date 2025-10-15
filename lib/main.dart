import 'package:flutter/material.dart';
import 'package:otex/core/service/service_app.dart';
import 'package:otex/otex_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceApp.init();
  runApp(const OtexApp());
}
