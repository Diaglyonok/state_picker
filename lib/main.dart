import 'dart:async';

import 'package:flutter/material.dart';

import 'features/location_picker/presentation/pages/location_picker_page.dart';
import 'injection/injection.dart';

void main() {
  configureDependencies();

  runZonedGuarded(() => runApp(const MyApp()), (error, stackTrace) {
    debugPrint(error.toString());
    debugPrint(stackTrace.toString());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Picker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LocationPickerPage(),
    );
  }
}
