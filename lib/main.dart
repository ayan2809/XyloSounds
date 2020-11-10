import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

//import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound( int a){
    final player = AudioCache();
    player.play('note$a.wav');
  }
  Expanded buildKey(Color s,int a)
  {

    return Expanded(
      child: FlatButton(
        color: s ,
        onPressed: (){
          playSound(a);

        },

      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.black,
        body: SafeArea(


            child: Container(
              width: 1000,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  buildKey(Colors.red,1),
                  buildKey(Colors.orange,2),
                  buildKey(Colors.yellow,3),
                  buildKey(Colors.green,4),
                  buildKey(Colors.teal,5),
                  buildKey(Colors.blue,6),
                  buildKey(Colors.purple,7),
                ],
                ),


              ),
          ),
          ),

);
  }
}
