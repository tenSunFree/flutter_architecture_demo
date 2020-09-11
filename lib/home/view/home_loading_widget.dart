import 'package:flutter/material.dart';

class HomeLoadingWidget extends StatelessWidget {
  const HomeLoadingWidget();

  @override
  Widget build(BuildContext context) => CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF73C0F4)));
}
