import 'package:audioplayers/audioplayers.dart';
// ignore: unused_import
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(xylophone());
}

// ignore: camel_case_types
class xylophone extends StatelessWidget {
  //this is the method instead of hard coding call this method

  void playsound(int num) {
    final player = AudioCache();
    player.play('sound$num.wav');
  }

  Expanded createbutton(Color color, int number) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        playsound(number);
      },
      child: Text(''),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('The xylophone App')),
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  createbutton(Colors.white10, 1),
                  createbutton(Colors.black, 2),
                  createbutton(Colors.pink, 3),
                  createbutton(Colors.green, 4),
                  createbutton(Colors.orangeAccent, 5),
                  createbutton(Colors.lightGreen, 6),
                  createbutton(Colors.grey, 7),

                  // Expanded(
                  //     child:
                  //         // ignore: deprecated_member_use
                  //         FlatButton(
                  //   color: Colors.grey,
                  //   onPressed: () {
                  //     // final player = AudioCache();
                  //     // player.play('sound1.wav');
                  //     // in place of upper code we call playsound method.
                  //     playsound(1);
                  //   },
                  //   child: Text(''),
                  // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // // ),
                  // // Expanded(
                  // //     child: FlatButton(
                  // //   color: Colors.black87,
                  // //   onPressed: () {
                  // //     // final player = AudioCache();
                  // //     // player.play('sound1.wav');
                  // //     playsound(2);
                  // //   },
                  // //   child: Text(''),
                  // // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // //),
                  // Expanded(
                  //     child: FlatButton(
                  //   color: Colors.deepOrange,
                  //   onPressed: () {
                  //     // final player = AudioCache();
                  //     // player.play('sound2.wav');
                  //     playsound(3);
                  //   },
                  //   child: Text(''),
                  // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // // ),
                  // Expanded(
                  //     child: FlatButton(
                  //   color: Colors.lightGreen,
                  //   onPressed: () {
                  //     // final player = AudioCache();
                  //     // player.play('sound3.wav');
                  //     playsound(4);
                  //   },
                  //   child: Text(''),
                  // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // // ),
                  // Expanded(
                  //     child: FlatButton(
                  //   color: Colors.cyan,
                  //   onPressed: () {
                  //     // final player = AudioCache();
                  //     // player.play('sound4.wav');
                  //     playsound(5);
                  //   },
                  //   child: Text(''),
                  // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // // ),
                  // Expanded(
                  //     child: FlatButton(
                  //   color: Colors.lightBlueAccent,
                  //   onPressed: () {
                  //     // final player = AudioCache();
                  //     // player.play('sound5.wav');
                  //     playsound(6);
                  //   },
                  //   child: Text(''),
                  // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // // ),
                  // Expanded(
                  //     child: FlatButton(
                  //   color: Colors.grey,
                  //   onPressed: () {
                  //     Text('heelo');
                  //     // final player = AudioCache();
                  //     // player.play('sound6.wav');
                  //     playsound(7);
                  //   },
                  //   child: Text(''),
                  // )),
                  // // SizedBox(
                  // //   height: 10.0,
                  // // ),
                  // Expanded(
                  //     child: FlatButton(
                  //   color: Colors.indigo,
                  //   onPressed: () {
                  //     // final player = AudioCache();
                  //     // player.play('sound7.wav');
                  //     playsound(4);
                  //   },
                  //   child: Text(''),
                  // )),
                ]),
          ),
        ),
      ),
    );
  }
}
