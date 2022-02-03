import 'package:dialog_input/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}




class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



      // myAlertDialog(BuildContext context){
      //
      //   return showDialog<String>(
      //       context: context,
      //       builder: (BuildContext context) => AlertDialog(
      //          title: Text("AAAAAAAA"),
      //         content: Text("BBBBBBB"),
      //         actions: <Widget>[
      //
      //           TextButton(
      //               onPressed: (){
      //                 Navigator.pop(context,'cancel');
      //               },
      //               child: Text("Cancel")
      //              ),
      //           TextButton(
      //               onPressed: (){
      //                 Navigator.pop(context,'ok');
      //
      //               },
      //               child: Text("Ok")
      //           ),
      //
      //         ],
      //
      //
      //       ));
      //
      //
      //
      // }
      //





  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home : Scaffold(
         body: Center(
           child: ElevatedButton(
             onPressed: () {

               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SecondScreen()),
               );


             },
           child: Text("Click"),),
         ),
      ),
    );













    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     appBar: AppBar(title: Text("Alert Input Box")),
    //     body: Center(
    //       child: ElevatedButton(
    //         child: Text("Click"),
    //         onPressed: (){
    //           myAlertDialog(context);
    //         },
    //       ),
    //     ),
    //   ),
    // );



  }
}
