
import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'JosefinSans'
    ),
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget {
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'Financial Sale Management',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}



