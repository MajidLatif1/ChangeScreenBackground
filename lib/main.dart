import 'package:flutter/material.dart';

void main() {
  runApp(ChangeBackground());
}

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({super.key});

  @override
  State<ChangeBackground> createState() => _ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<ChangeBackground> {
  Color screenBgColor = Colors.white;

  void changeBgColor(Color myColor) {
    setState(() {
      screenBgColor = myColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Change Background Color"),
        ),
        body: Center(
            child: Container(
          color: screenBgColor,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    changeBgColor(Colors.blue);
                  },
                  child: Text("Blue"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeBgColor(Colors.orange);
                  },
                  child: Text("Orange"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    changeBgColor(Colors.green);
                  },
                  child: Text("Green"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeBgColor(Colors.red);
                  },
                  child: Text("Red"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ],
            ),
          ]),
        )),
      ),
    );
  }
}
