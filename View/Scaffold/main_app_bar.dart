import 'package:arzan/View/Widgets/my_container.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatefulWidget {
  final double height;
  const MainAppbar({
    this.height=0.0,
        super.key});

  @override
  State<MainAppbar> createState() => _MainAppbarState();
}

class _MainAppbarState extends State<MainAppbar> {
  @override
  Widget build(BuildContext context) {
    return MyContainer(
      width: double.infinity,
      height: widget.height,
    );
  }
}
