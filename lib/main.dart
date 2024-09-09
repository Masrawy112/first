import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[600],
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final containers = [
      Colors.blue[100],
      Colors.amber,
      Colors.green[100],
      Colors.deepOrangeAccent[100],
      Colors.pink[100],
      Colors.tealAccent[100],
      Colors.brown[100],
      Colors.deepPurple[100],
      Colors.lightGreen[100],
      Colors.teal[100],
    ];

    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final color = containers[index % containers.length];
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                height: 200,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Top Left',
                            style: TextStyle(color: Colors.black, fontSize: 20),)
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text('Center',
                            style: TextStyle(color: Colors.black, fontSize: 20))
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Bottom Right',
                              style: TextStyle(color: Colors.black, fontSize: 20))
                      ),
                    ),
                  ],
                ),
              )
          );
        }
    );
  }
}