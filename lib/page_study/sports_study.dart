import 'package:flutter/material.dart';
import 'package:english_app/home_page.dart';

class Sport{
  final String imageAsset;
  final String name;
  final String pronounce;

  Sport({required this.imageAsset, required this.name, required this.pronounce});
}
class SportsStudy extends StatelessWidget {
  final List<Sport> sport = [
    Sport(
      imageAsset: 'images/cycling.png',
      name: 'Cycling',
      pronounce:'ˈsaɪklɪŋ',
    ),
    Sport(
      imageAsset: 'images/gymnastics.png',
      name: 'Gymnastics',
      pronounce:'dʒɪmˈnæstɪks',
    ),
    Sport(
      imageAsset: 'images/tennis.png',
      name: 'Tennis',
      pronounce:'ˈtenɪs',
    ),
    Sport(
      imageAsset: 'images/running.png',
      name: 'Running',
      pronounce:'ˈrʌnɪŋ',
    ),
    Sport(
      imageAsset: 'images/swimming.png',
      name: 'Swimming',
      pronounce:'ˈswɪmɪŋ',
    ),
    Sport(
      imageAsset: 'images/volleyball.png',
      name: 'Volleyball',
      pronounce:'ˈvɒlibɔːl',
    ),
    Sport(
      imageAsset: 'images/basketball.png',
      name: 'Basketball ',
      pronounce:'ˈbɑːskɪtbɔːl',
    ),
    Sport(
      imageAsset: 'images/skiing.png',
      name: 'Skiing',
      pronounce:'ˈskiː.ɪŋ',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Các môn thể thao'),
      // ),
      body: ListView.builder(
        itemCount: sport.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Hình ảnh
                  Image.asset(
                    sport[index].imageAsset,
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
                          sport[index].name,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center, 
                        ),
                        Text(
                          sport[index].pronounce,
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
