import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class MainHome extends StatelessWidget {
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
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //1st part of home screen (search and mangeicond)

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.search),
                          hintText: "search here"),
                    ),
                  )
                      .box
                      .height(50)
                      .width(MediaQuery.of(context).size.width * 0.8)
                      .white
                      .rounded
                      .shadow
                      .make(),
                  Icon(
                    Icons.settings_voice,
                    color: Color.fromARGB(231, 65, 4, 109),
                    size: 35,
                  )
                ],
              ),
            ),
            20.heightBox,

            //suggestion job part

            "Suggested jobs".text.semiBold.size(22).purple900.make(),
            10.heightBox,
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Expanded(
                flex: 1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        imgList[index],
                                        height: 60,
                                        width: 60,
                                      ).box.white.shadow.rounded.make(),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 100, 3),
                                      )
                                    ],
                                  ),
                                  10.heightBox,
                                  imgTitle[index]
                                      .text
                                      .size(20)
                                      .color(Color.fromARGB(255, 64, 25, 143))
                                      .make(),
                                  20.heightBox,
                                  jobTitle[index]
                                      .text
                                      .black
                                      .size(18)
                                      .bold
                                      .make(),
                                  "\$3600/m".text.bold.blue800.make(),
                                ]),
                          ),
                        )
                            .box
                            .width(MediaQuery.of(context).size.width * 0.5)
                            .white
                            .rounded
                            .shadow
                            .make(),
                      );
                    }),
              ),
            ),
            20.heightBox,

            //popular job part
            "Popular jobs".text.semiBold.size(22).purple900.make(),
            10.heightBox,
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: ListTile(
                            leading: Image.asset(imgList[index]),
                            title: jobTitle[index].text.black.bold.make(),
                            subtitle: imgTitle[index].text.make(),
                            trailing: "20\$/hr"
                                .text
                                .size(18)
                                .color(Color.fromARGB(255, 29, 9, 88))
                                .semiBold
                                .make(),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      )),
    );
  }
}
