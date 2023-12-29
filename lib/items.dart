import 'package:flutter/material.dart';
import 'package:flutter_application_15/item.dart';

class Items extends StatefulWidget {
  const Items({
    super.key,
  });

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTileItem(
            imageUrl: 'images/sobh.png',
            time: '12.5',
            title: 'اذان صبح',
          ),
          ListTileItem(
            imageUrl: 'images/tolo.png',
            time: '12.5',
            title: 'طلوع آفتاب',
          ),
          ListTileItem(
            imageUrl: 'images/zohr.png',
            time: '12.5',
            title: 'اذان ظهر',
          ),
          ListTileItem(
            imageUrl: 'images/asr.png',
            time: '12.5',
            title: 'عصر',
          ),
          ListTileItem(
            imageUrl: 'images/maghreb.png',
            time: '12.5',
            title: 'اذان مغرب',
          ),
          ListTileItem(
            imageUrl: 'images/asha.png',
            time: '12.5',
            title: 'عشاء',
          ),
          ListTileItem(
            imageUrl: 'images/nimeshab.png',
            time: '12.5',
            title: 'نیمه شب شرعی',
          ),
        ],
      ),
    );
  }
}
