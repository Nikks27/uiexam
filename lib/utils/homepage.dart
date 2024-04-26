
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiexam/utils/Deatailspage.dart';
import 'package:uiexam/utils/productlist.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(top: 75, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 35,
                              color: Colors.black,
                            ),
                            Text(
                              'Serch',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.menu_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            menuLine.length,
                                (index) => Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.brown.shade400,
                                  borderRadius: BorderRadius.circular(25)),
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    menuLine[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ))),
                  ),
                ),
                Row(children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Column(children: [
                    ...List.generate(
                        productlist1.length,
                            (index) => InkWell(
                          onTap: () {
                            indexselect=index;
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Deatailspage(),
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image(
                              image:
                              AssetImage(productlist1[index]["image"]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                  ]),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Column(
                        children: [
                          ...List.generate(
                            productlist2.length,
                                (index) => InkWell(
                              onTap: () {
                                indexselect = index;
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Deatailspage(),
                                ));
                              },
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        productlist2[index]["image"]),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ]),
            )));
  }
}

List menuLine = ["All", "Men", "Women", "Kids", "Others"];
int indexselect = 10;
