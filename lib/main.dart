import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],

      appBar: AppBar(
        title: Text('ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[750],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40 , 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.grey[800],
                radius: 85,
                child: CircleAvatar(
                  backgroundImage: Image('assets/111.jpeg'),
                  radius: 80,


                ),
              ),
            ),
            Divider(height: 90,color: Colors.grey[800],),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,

              ),
            ),
            SizedBox(height: 10),
            Text(
              'Siddhant',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,

              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1,
                height: 5,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 30,width : 40),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[200],
                ),
                SizedBox(width: 10),
                Text(
                  'siddhant.11912066@iiitsonepat.ac.in',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 18,
                    
                    letterSpacing: 3,

                  ),

                ),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
            //something else too
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}


