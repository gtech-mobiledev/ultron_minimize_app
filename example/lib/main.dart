import 'package:flutter/material.dart';
import 'package:ultron_minimize_app/ultron_minimize_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin Minimize App')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              MinimizeApp.minimize();
            },
            child: const Text('Minimize'),
          ),
        ),
      ),
    );
  }
}
