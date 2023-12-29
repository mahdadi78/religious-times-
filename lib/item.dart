import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTileItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  const ListTileItem({
    super.key,
    required this.imageUrl,
    required this.time,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        leading: SizedBox(
          width: 30,
          height: 30,
          child: Image(
            image: AssetImage(imageUrl),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black87),
        ),
        trailing: Text(
          time,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }
}
