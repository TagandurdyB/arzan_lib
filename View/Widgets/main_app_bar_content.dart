import 'package:flutter/material.dart';

class MainAppBarContent extends StatelessWidget {
  const MainAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        color: Colors.red,
        child: Stack(
          children:  const [
            Expanded(child: SizedBox(child: Text("Salam"),))
          ],
        ));
  }
}
