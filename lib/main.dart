import 'package:eb_ojek_app/home_page.dart';
import 'package:eb_ojek_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ojek App',
      home: HomePage(),
    );
  }
}
