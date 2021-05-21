import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Dice home',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blue[700],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          SizedBox(
            width: 150,
            height: 20,
            child: Divider(
              color: Colors.white,
              height: 20,
            ),
          ),
          Card(
            shadowColor: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.blue,
              ),
              title: TextButton(
                onPressed: () {
                  print('Email has been sent');
                },
                child: Text(
                  'ronnykelvyne3@gmail.com',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Icon(Icons.more_vert),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                // flex: 2,
                //Easy way to use Image class
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                        // print('Encountered no error: Dice number = $leftDiceNumber');
                      });
                    },
                    child: Image.asset('assets/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                // flex: 1,
                //Traditional way to use Image class
                child: Padding(
                  //Add the spacing around the images
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage('assets/dice$rightDiceNumber.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
