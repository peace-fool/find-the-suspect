import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  var s1 = ['s1> I did\'t do it!','s1> It was s2 goddamn it!, not me!','s1> Stop it!!','s1> I knew you would choose the right one ;)' ];
  var s2 = ['s2> I was not there', 's2> I told you I was not there!, goddamn it!!', 's2> WTF bro, It wasen\'t me', 's2> hehe ;)'];
  var s3 = ['s3> This is so stupid', 's3> Hey dude wtf!', 's3> Stop it', 's3> What a drag...'];
  var si1=0,si2=0,si3 = 0;

     sf1(){
       setState(() {
          if((si2==0)&& (si3==0)){
      si1 = 1;
      si2 = 3;
      si3 = 3;
    }
    else if (si1 == 1){
      si1 = 2;
    }
    else {
      si1 = 2;
      si2 = 3;
      si3 = 3;
    }
       });
   
  }
  sf2(){
    setState(() {
       if((si1==0)&& (si3==0)){
      si2 = 1;
      si1 = 3;
      si3 = 3;
    }
    else if (si2 == 1){
      si2 = 2;
    }
    else {
      si1 = 3;
      si2 = 2;
      si3 = 3;
    }
    });
    

  }
  sf3(){
    setState(() {
       if((si2==0)&& (si1==0)){
      si3 = 1;
      si2 = 3;
      si1 = 3;
    }
    else if (si3 == 1){
      si3 = 2;
    }
    else {
      si1 = 3;
      si2 = 3;
      si3 = 2;
    }
    });

  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Guess the suspect'),
      ),
      body: Column(children: [
        Text('The person you suspect in second round is going to be convicted!'),
        Text('Choose Wisely'),
        RaisedButton(child: Text(s1[si1]) ,onPressed: sf1),
        RaisedButton(child: Text(s2[si2]) ,onPressed: sf2),
        RaisedButton(child: Text(s3[si3]) ,onPressed: sf3),
      ],)
    ),);
  }
}