import 'package:flutter/material.dart';
import 'package:english_app/page_study/equipment_study.dart';
import 'package:english_app/page_study/jobs_study.dart';
import 'package:english_app/page_study/sports_study.dart';
import 'lesson_card.dart';
import 'page_study/animals_study.dart';


class HomePage extends StatelessWidget {
  
  @override
  void onAnimalsStudyTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnimalsStudy()),
    );
  }
  void onEquipmentStudyTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EquipmentStudy()),
    );
  }
  void onJobsStudyTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => JobsStudy()),
    );
  }
  void onSportStudyTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SportsStudy()),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn English'),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              onAnimalsStudyTap(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color.fromARGB(255, 179, 205, 31),
                  width: 1.0,
                ),
              ),
              child: LessonCard(
                title: 'Thế Giới Động Vật',
                description: 'Học về tên các loài động vật và cách phát âm.',
                imagePath: 'images/bg_animals.jpg',
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onEquipmentStudyTap(context);// Do something when LessonCard is tapped
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color.fromARGB(255, 70, 11, 209),
                  width: 1.0,
                ),
              ),
              child: LessonCard(
                title: 'Đồ Vật Trong Nhà',
                description: 'Học về các loại vật dụng và cách phát âm.',
                imagePath: 'images/bg_equiqment.jpg',
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onJobsStudyTap(context);// Do something when LessonCard is tapped
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color.fromARGB(255, 133, 26, 26),
                  width: 1.0,
                ),
              ),
              child: LessonCard(
                title: 'Các Ngành Nghề Trong Cuộc Sống',
                description: 'Học về các gọi tên các nghề nghiệp và cách phát âm.',
                imagePath: 'images/bg_jobs.jpg',
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onSportStudyTap(context);// Do something when LessonCard is tapped
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color.fromARGB(255, 10, 225, 175),
                  width: 1.0,
                ),
              ),
              child: LessonCard(
                title: 'Các Môn Thể Thao',
                description: 'Học về tên gọi các môn thể thao và cách phát âm.',
                imagePath: 'images/bg_sports.jpg',
              ),
            ),
          ),
          Container(
  height: 80.0,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.pop(context); // Navigate back to previous screen
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 44, 118, 229),
          onPrimary: Colors.black,
          elevation: 4.0,
          side: BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0), // set a larger value to make the button bigger
            side: BorderSide(color: Colors.grey),
          ),
        ),
        child: Text('Back',style:TextStyle(color:Colors.white)),
      ),
      SizedBox(width: 45.0,height: 100.0,),
      ElevatedButton(
        onPressed: () {
          // Do something when the second button is pressed
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 44, 118, 229),
          onPrimary: Colors.black,
          elevation: 4.0,
          side: BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0), // set a larger value to make the button bigger
            side: BorderSide(color: Colors.grey),
          ),
        ),
        child: Text('Next',style:TextStyle(color: Colors.white),
    ),
  ),
],
            ),
          ),
        ],
      ),
      
    );
  }
}
        