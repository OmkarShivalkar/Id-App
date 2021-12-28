import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),
));

class IdCard extends StatefulWidget {

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
        title: Text(
          'ID Card'
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assest/space.png'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 75.0,
              color: Colors.grey[1000],
            ),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              'Harsh Shivalkar',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 25.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height:20.0),
            Text(
              'LEVEL',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              '$level',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'LANGUAGE',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              'Python',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'omkarshivalkar10@gmail.com',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.5,
                    fontSize: 16
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}