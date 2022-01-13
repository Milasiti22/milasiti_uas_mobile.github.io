import 'dart:js';

import 'package:flutter/material.dart';
import 'package:uas_mobile/lingkaran.dart';

import 'halaman.dart';
import 'persegi.dart';

void main() {
  runApp(MaterialApp(
    home: CardProfile(),
  ));
}

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[800],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/mila.jpg'),
            ),
            TextButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => HalamanNama());
                Navigator.push(context, route);
              },
              child: Text(
                'Mila Siti Salamah',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'UAS P MOBILE',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Padding(padding: new EdgeInsets.all(10.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => Persegi());
                Navigator.push(context, route);
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'HITUNG LUAS & KELILING PERSEGI',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                  subtitle: Text(
                    'Pilih untuk Mulai Menghitung Luas & Keliling Persegi',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
            Padding(padding: new EdgeInsets.all(10.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => lingkaran());
                Navigator.push(context, route);
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.circle_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'HITUNG LUAS & KELILING LINGKARAN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                  subtitle: Text(
                    'Pilih untuk Mulai Menghitung Luas & Keliling Lingkaran',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
            Padding(padding: new EdgeInsets.all(10.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => HalamanNama());
                Navigator.push(context, route);
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'PROFILE DEVELOPER',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                  subtitle: Text(
                    'Pilih untuk Melihat Developer',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
