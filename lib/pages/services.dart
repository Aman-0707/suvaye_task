import 'package:flutter/material.dart';

import '../widg/OutlineButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
            height: 60,
            width: double.maxFinite,
            child: const Text(
              'Hello, Suvaye Tech',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(left: 10, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Services',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See More >',
                  style: TextStyle(fontSize: 17, color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 0, right: 25),
            child: ListView.builder(
                physics: PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        Container(
                            width: 360,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top: 30, left: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'App Development',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Develop beautiful fast mobile \napplication',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: List.generate(
                            3,
                            (indexdots) => Container(
                              margin: EdgeInsets.only(left: 5),
                              width: index == indexdots ? 20 : 10,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: index == indexdots
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(left: 10, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Outline',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See More >',
                  style: TextStyle(fontSize: 17, color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (1 / .4),
            shrinkWrap: true,
            children: [


              ///////AppButtons from outlineButton.dart/////

              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: AppButtons(backgroundColor: Colors.red[100],iconn: Icons.phone_android,text: 'Apps',),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10,right: 20,top: 10),
                child: AppButtons(backgroundColor: Colors.blue[100],iconn: Icons.computer_outlined,text: 'Website',),
              ),
               Padding(
                padding: const EdgeInsets.only(left:25,right: 0,top: 10),
                child: AppButtons(backgroundColor: Colors.purple[100],iconn: Icons.design_services,text: 'Design',),
              ),
               Padding(
                padding: const EdgeInsets.only(left:10,right: 20,top: 10),
                child: AppButtons(backgroundColor: Colors.yellow[100],iconn: Icons.person,text: 'Consultant',),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
