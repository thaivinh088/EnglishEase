import 'package:flutter/material.dart';
import 'package:english_app/home_page.dart';

class Job{
  final String imageAsset;
  final String name;
  final String pronounce;

  Job({required this.imageAsset, required this.name, required this.pronounce});
}
class JobsStudy extends StatelessWidget {
  final List<Job> job = [
    Job(
      imageAsset: 'images/doctor.png',
      name: 'Doctor',
      pronounce:'ˈdɒktər',
    ),
    Job(
      imageAsset: 'images/dentist.png',
      name: 'Dentist',
      pronounce:'ˈdentɪst',
    ),
    Job(
      imageAsset: 'images/cashier.png',
      name: 'Cashier',
      pronounce:'kæʃˈɪər',
    ),
    Job(
      imageAsset: 'images/builder.png',
      name: 'Builder',
      pronounce:'ˈbɪldər',
    ),
    Job(
      imageAsset: 'images/reporter.png',
      name: 'Reporter',
      pronounce:'rɪˈpɔːtər',
    ),
    Job(
      imageAsset: 'images/tailor.png',
      name: 'Tailor',
      pronounce:'ˈteɪlər',
    ),
  ];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Các ngành nghề trong cuộc sống'),
      // ),
      body: ListView.builder(
        itemCount: job.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Hình ảnh
                  Image.asset(
                    job[index].imageAsset,
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
                          job[index].name,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center, 
                        ),
                        Text(
                          job[index].pronounce,
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
