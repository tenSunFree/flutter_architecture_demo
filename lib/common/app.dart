import 'package:flutter_architecture_demo/home/view/home_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: 'FlutterArchitectureBlueprintsDemo', home: HomePage());
}
