import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: EsoftCard(),
  ));
}

class EsoftCard extends StatefulWidget {
  const EsoftCard({super.key});

  @override
  State<EsoftCard> createState() => _EsoftCardState();
}

class _EsoftCardState extends State<EsoftCard> {

  int currentYear = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text('Esoft ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentYear += 1;
          });
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Id_Profile.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Colors.white,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            const Text(
              'Nimesh Ekanayake',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              'Educational Level',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            const Text(
              'Undergraduate',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              'Current Year',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              '$currentYear',
              style: const TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0,),
                Text(
                    'nimesh.kasun@edvicon.org',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
