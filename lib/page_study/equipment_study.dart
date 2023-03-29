import 'package:flutter/material.dart';
import 'package:english_app/home_page.dart';

class Equipment{
  final String imageAsset;
  final String name;
  final String pronounce;

  Equipment({required this.imageAsset, required this.name, required this.pronounce});
}

class EquipmentStudy extends StatelessWidget {
  final List<Equipment> equipment = [
    Equipment(
      imageAsset: 'images/tv.png',
      name: 'Television',
      pronounce:'ˈtelɪˌvɪʒən',
    ),
    Equipment(
      imageAsset: 'images/bed.png',
      name: 'Bed',
      pronounce:'bed',
    ),
    Equipment(
      imageAsset: 'images/shelf.png',
      name: 'Shelf',
      pronounce:'SHelf',
    ),
    Equipment(
      imageAsset: 'images/fridge.png',
      name: 'Fridge',
      pronounce:'frɪdʒ',
    ),
  ];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Đồ vật trong nhà'),
      // ),
      body: ListView.builder(
        itemCount: equipment.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Hình ảnh
                  Image.asset(
                    equipment[index].imageAsset,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  // Dòng thông tin
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          equipment[index].name,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center, 
                        ),
                        Text(
                          equipment[index].pronounce,
                          style: Theme.of(context).textTheme.bodyText2,
                          textAlign: TextAlign.center, 
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
