import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Inbox".text.bold.size(25).blue900.make(),
                  Icon(
                    Icons.mark_chat_unread_rounded,
                    color: Color.fromARGB(255, 6, 43, 76),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Card(
                        elevation: 2,
                        child: ListTile(
                          leading: Icon(
                            Icons.markunread_mailbox_rounded,
                            color: Color.fromARGB(255, 36, 108, 39),
                          ),
                          title: "Jhon Doe".text.black.bold.make(),
                          subtitle: "Wanted to discussion about the job"
                              .text
                              .black
                              .make(),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
