import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Ninja ID Card', 
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increaseLevelByOne();
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chun-li.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Chu-Li',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              'CURRENT NINJA LEVEL ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10
                  ),
                  Text(
                    'chun.li@thenetninja.com',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
  
  void increaseLevelByOne() {
    ninjaLevel++;
  }
}