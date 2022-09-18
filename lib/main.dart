import 'package:flutter/material.dart';
import 'package:pomotimer/PomotimerScreen.dart';
import 'package:pomotimer/timerServices.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: PomotimeScreen(),
    );
  }
}
