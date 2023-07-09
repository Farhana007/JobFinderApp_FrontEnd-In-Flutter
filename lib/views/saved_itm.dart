import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class SavedItemPage extends StatelessWidget {
  //list for img

  List imgList = [
    'lib/img/google.png',
    'lib/img/apple.png',
    'lib/img/microsoft.png',
    'lib/img/threads.png',
    'lib/img/twitter.png'
  ];

  //list of img name

  List<String> imgTitle = [
    "Google",
    "Apple",
    "Microsoft",
    "Threads",
    "Twitter"
  ];

  //list of job title

  List<String> jobTitle = [
    "Senior Developer",
    "Backend Developer",
    "UI/UX Designer",
    "Flutter Developer",
    "Game Developer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            "Saved job".text.blue900.semiBold.size(19).make(),
            30.heightBox,
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 4,
                          child: ListTile(
                            leading: Image.asset(imgList[index]),
                            title: imgTitle[index].text.make(),
                            subtitle: jobTitle[index].text.make(),
                          ),
                        ),
                      );
                    }))
          ]),
        ),
      ),
    );
  }
}
