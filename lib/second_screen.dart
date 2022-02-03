
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

   String txt = "Alert Input Box";

  TextEditingController alertController = TextEditingController();



  myAlertDialog(BuildContext context){

    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("Enter Name"),
          content: TextField(controller: alertController,),
          actions: <Widget>[

            TextButton(
                onPressed: (){
                  Navigator.pop(context,'cancel');
                },
                child: Text("Cancel")
            ),
            TextButton(
                onPressed: (){



                  print(alertController.text);

                  setState(() {
                    txt = alertController.text;
                  });
                  Navigator.pop(context,'ok');
                  alertController.text = "";

                },
                child: Text("Ok")
            ),

          ],


        ));




  }










  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("${txt}")),
        body: Center(
          child: ElevatedButton(
            child: Text("Click"),
            onPressed: (){
              myAlertDialog(context);
            },
          ),
        ),
      ),
    );
  }
}
