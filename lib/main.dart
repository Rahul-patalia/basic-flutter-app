import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp
(
    home: rahul_id(),
));

class rahul_id extends StatefulWidget 
{
  @override
  _rahul_idState createState() => _rahul_idState();
}

class _rahul_idState extends State<rahul_id> 
{

  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.grey[900],
      appBar: AppBar
      (
        title: Text("Rahul id card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton
      (
        onPressed: () 
        {
          setState(() 
          {
            Counter = new Random().nextInt(10);
          });
        },
        child: Icon(Icons.adjust_rounded),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding
      (
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>
          [

            Center
            (
              child: CircleAvatar
              (
                backgroundImage: AssetImage("Assets/Rahul-Avatar.jpg"),
                radius: 80.0,
              ),
            ),

            Divider
            (
              height: 100.0,
              color: Colors.grey[500],
            ),

            Text
            (
              "NAME",
              style: TextStyle
              (
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            
            SizedBox(height: 10.0),
            
            Text
            (
              "Rahul Patalia",
              style: TextStyle
              (
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),

            Text
            (
              "PHONE NUMBER",
              style: TextStyle
              (
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),

            SizedBox(height: 10.0),
            
            Text
            (
              "+61 432814146",
              style: TextStyle
              (
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),

            Row
            (
              children: <Widget>
              [
                Icon
                (
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text
                (
                  "Pataliarahul97@gmail.com",
                  style: TextStyle
                  (
                    color: Colors.grey[400],
                    fontSize: 20.0
                  ),
                ),
              ],
            ),

            SizedBox(height: 30.0),

            Text
            (
              "GENERATE RANDOM NUMBER (1-10):",
              style: TextStyle
              (
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),

            SizedBox(height: 10.0),
            
            Text
            (
              "$Counter",
              style: TextStyle
              (
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

