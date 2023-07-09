import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  //list of Infotitle

  List<String> infoTitle = [
    "Contact Information",
    'Skills',
    'Experience',
    'Projects',
    'Education',
    'Expected Sallary'
  ];

// list of Icons

  List<IconData> iconList = [
    Icons.contact_page,
    Icons.pie_chart_sharp,
    Icons.data_exploration_sharp,
    Icons.file_copy,
    Icons.cast_for_education_rounded,
    Icons.attach_money_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Profile".text.bold.size(25).blue900.make(),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Color.fromARGB(255, 6, 43, 76),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Image.asset('lib/img/Avatar.png'),
              title: "Farhana Akter".text.size(22).amber900.make(),
              subtitle: "Flutter Developer".text.make(),
              trailing: Icon(Icons.edit_outlined),
            ),
          ),
          30.heightBox,
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(
                          iconList[index],
                          size: 32,
                          color: const Color.fromARGB(255, 2, 63, 113),
                        ),
                        title: infoTitle[index].text.semiBold.make(),
                        trailing: Icon(Icons.add),
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}
