import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import 'home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //introimg png
          Image.asset("lib/img/jobImg.png"),
          60.heightBox,

          //text part
          "Welcome!".text.bold.black.size(30).make(),
          "Find Your Dream job"
              .text
              .size(20)
              .color(const Color.fromARGB(255, 57, 53, 53))
              .make(),
          70.heightBox,

          //button to find job
          GestureDetector(
            onTap: () {
              Get.to(() => HomePage());
            },
            child: Center(
              child: "Find a job".text.white.semiBold.size(25).make(),
            )
                .box
                .height(55)
                .width(MediaQuery.of(context).size.width * 0.9)
                .color(Color.fromARGB(255, 16, 155, 214))
                .shadow
                .rounded
                .make(),
          ),
          20.heightBox,

          //button to find Employee
          GestureDetector(
            onTap: () {},
            child: Center(
              child: "Find an employee".text.blue800.semiBold.size(25).make(),
            )
                .box
                .height(55)
                .width(MediaQuery.of(context).size.width * 0.9)
                .color(Color.fromARGB(255, 126, 227, 195))
                .shadow
                .rounded
                .make(),
          )
        ],
      )),
    );
  }
}
