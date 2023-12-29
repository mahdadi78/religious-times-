import 'package:flutter/material.dart';
import 'package:flutter_application_15/get_data_api.dart';
import 'package:flutter_application_15/item.dart';
import 'package:flutter_application_15/model.dart';

class Items extends StatefulWidget {
  const Items({
    super.key,
  });

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  String cityName = 'تهران';

  @override
  void initState() {
    super.initState();
    getData(cityName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(cityName),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _items(snapshot);
        } else if (snapshot.hasError) {
          return Container();
        }
        return const Expanded(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget _items(AsyncSnapshot<OghatSharE> snapshot) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTileItem(
            imageUrl: 'images/sobh.png',
            time: snapshot.data!.result!.azanSobh!,
            title: 'اذان صبح',
          ),
          ListTileItem(
            imageUrl: 'images/tolo.png',
            time: snapshot.data!.result!.toluAftab!,
            title: 'طلوع آفتاب',
          ),
          ListTileItem(
            imageUrl: 'images/zohr.png',
            time: snapshot.data!.result!.azanZohr!,
            title: 'اذان ظهر',
          ),
          ListTileItem(
            imageUrl: 'images/asr.png',
            time: snapshot.data!.result!.ghorubAftab!,
            title: 'غروب آفتاب',
          ),
          ListTileItem(
            imageUrl: 'images/maghreb.png',
            time: snapshot.data!.result!.azanMaghreb!,
            title: 'اذان مغرب',
          ),
          ListTileItem(
            imageUrl: 'images/asha.png',
            time: snapshot.data!.result!.nimeshab!,
            title: 'نیمه شب شرعی',
          ),
        ],
      ),
    );
  }
}
