import 'package:flutter/material.dart';

class ContainerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.redAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Container-1")),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.blueAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Container-2")),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.greenAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Container-3")),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.orangeAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Container-4")),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.purpleAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Container-5")),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.pinkAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Container-6")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
