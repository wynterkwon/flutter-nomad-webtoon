import 'package:flutter/material.dart';
import 'package:webtoon/screens/api_service.dart';
import 'package:webtoon/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyToons(),
    );
  }
}
