import 'package:flutter/material.dart';
import 'package:english_app/home_page.dart';

class Animal {
  final String imageAsset;
  final String name;
  final String pronounce;

  Animal({required this.imageAsset, required this.name, required this.pronounce});
}


class AnimalsStudy extends StatelessWidget {

  final List<Animal> animals = [
    Animal(
      imageAsset: 'images/elephant.png',
      name: 'Elephant',
      pronounce:'ˈeləfənt',
    ),
    Animal(
      imageAsset: 'images/lion.png',
      name: 'Lion',
      pronounce:'ˈlaɪən',
    ),
    Animal(
      imageAsset: 'images/giraffe.png',
      name: 'Giraffe',
      pronounce:'ʤɪˈrɑːf'
    ),
    Animal(
      imageAsset: 'images/dog.png',
      name: 'Dog',
      pronounce:'dɒg'
    ),
    Animal(
      imageAsset: 'images/cat.png',
      name: 'Cat',
      pronounce:'kæt'
    ),
    Animal(
      imageAsset: 'images/bear.png',
      name: 'Bear',
      pronounce:'beə'
    ),
    Animal(
      imageAsset: 'images/zebra.png',
      name: 'Zebra',
      pronounce:'ˈziːbrə'
    ),
    Animal(
      imageAsset: 'images/panda.png',
      name: 'Panda',
      pronounce:'ˈpændə'
    ),
    Animal(
      imageAsset: 'images/duck.png',
      name: 'Duck',
      pronounce:'dək'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Thế Giới Động Vật'),
      // ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Hình ảnh
                  Image.asset(
                    animals[index].imageAsset,
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
                          animals[index].name,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center, 
                        ),
                        Text(
                          animals[index].pronounce,
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
