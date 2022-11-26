import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

//สี
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cheat Sheet",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}

//เนื้อหา
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cheat sheet"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, //setting position
          children: [
            Text(
              "Hello",
              style: TextStyle(fontSize: 30),
            ),
            Image(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2013/07/12/15/18/manuscript-149606_960_720.png"),
            ),
            Text("มาเพิ่มชีทกานนน"),
            Text(
              number.toString(),
              style: TextStyle(fontSize: 60),
            ),
          ],
        )
      ),
      //ปุ่มกด
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //เปลี่ยนแปลงค่า
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),     
      ),
    );
  }
}
