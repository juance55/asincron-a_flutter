import 'package:flutter/material.dart';
import 'package:asincronia/services/mockapi.dart';
import 'dart:async';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    int a = 0;
    int a1 = 0;
    double a2 = 0;
    int a3 = 0;
    int b = 0;
    int b1 = 0;
    double b2 = 0;
    int b3 = 0;
    int c = 0;
    int c1 = 0;
    double c2 = 0;
    int c3 = 0;

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.lightBlueAccent,
      ),
      home: Scaffold(
      appBar: AppBar(
          title: Text('Asincronia en Flutter'),
      ),
        body: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      setState(() {
                        a2 = 300;
                        a3 = 1;
                      });
                      a = await MockApi().getFerrariInteger();
                      setState(() {
                        a1 = a;
                        a2 = 0;
                        a3 = 0;
                      });
                      //print(az);
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.flash_on,
                      color: Colors.black,
                    ),
                  ),
                  AnimatedContainer(
                    width: a2,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.green),
                    duration: Duration(seconds: a3),
                  ),
                  Text(
                    a1.toInt().toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 30.0),
                  ),
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          b2 = 300;
                          b3 = 3;
                        });
                        b = await MockApi().getHyundaiInteger();
                        setState(() {
                          b1 = b;
                          b2 = 0;
                          b3 = 0;
                        });
                        //print(bz);
                      },
                      backgroundColor: Colors.orange,
                      child: const Icon(
                        Icons.airport_shuttle,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: b2,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.orange),
                    duration: Duration(seconds: b3),
                  ),
                  Text(
                    b1.toInt().toString(),
                    style:
                    const TextStyle(color: Colors.orange, fontSize: 30.0),
                  )
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          c2 = 300;
                          c3 = 10;
                        });
                        c = await MockApi().getFisherPriceInteger();
                        setState(() {
                          c1 = c;
                          c2 = 0;
                          c3 = 0;
                        });
                        // print(cz);
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.directions_walk,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: c2,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.red),
                    duration: Duration(seconds: c3),
                  ),
                  Text(
                    c1.toInt().toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 30.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
