// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Arial"),
        home: Scaffold(
            appBar: AppBar(),
            body: Container(
              margin: EdgeInsets.all(4.0),
              height: 500.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black, style: BorderStyle.solid)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 300.0,
                      height: 150.0,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/uwi2.jpg",
                                fit: BoxFit.contain,
                                scale: 1.0,
                              )),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 135.0,
                                  child: Column(
                                    children: [
                                      Text("The University",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0,
                                          )),
                                      Text(" of the ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0,
                                          )),
                                      Text("West Indies ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0,
                                          )),
                                      Text("Mona",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text("Student ID Card",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.0)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "White",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Matthew-Daniel R.K.",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 280.0,
                      padding: EdgeInsets.all(4.0),
                      color: Color.fromARGB(255, 252, 228, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("620101234",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0)),
                                SizedBox(height: 20.0),
                                Text("Faculty of Science and Technology",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Text("Undergraduate",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 20.0),
                                Text("Taylor Hall",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 25.0),
                                Text("Exp 07/31/2023",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10.0),
                                Text("Authorized by: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  // color: Colors.blue,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    backgroundImage:
                                        AssetImage("assets/ID.png"),
                                    radius: 70.0,
                                  ),
                                ),
                                Text("Signature",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("White,MD",
                                    style: TextStyle(
                                        // fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 26.0,
                                        fontFamily: "Kunstler Script"))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
