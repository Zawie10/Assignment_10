import 'package:flutter/material.dart';
import 'package:landscape/widget/buildWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orientation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrientationScreen(),
    );
  }
}

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Demo'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? PortraitView()
            : LandscapeView(),
      ),
    );
  }
}
