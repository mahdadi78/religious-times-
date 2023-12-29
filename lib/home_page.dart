import 'package:flutter/material.dart';
import 'package:flutter_application_15/items.dart';
import 'package:flutter_application_15/search_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SearchFeild(size: size),
          const Items(),
        ],
      ),
    );
  }
}
