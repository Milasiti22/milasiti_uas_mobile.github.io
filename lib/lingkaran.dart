import 'dart:js';

import 'package:flutter/material.dart';
import 'main.dart';
import 'halaman.dart';

void main() {
  runApp(new MaterialApp());
}

class lingkaran extends StatefulWidget {
  @override
  Luaslingkaran createState() => new Luaslingkaran();
}

class Luaslingkaran extends State<lingkaran> {
  int jari = 0;
  double phi = (22 / 7);
  int hasil = 0;
  int kel = 0;

  var nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double hasil = (phi * jari * jari * 1.0);
    double kel = phi * (2 * jari);

    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Route route =
                MaterialPageRoute(builder: (context) => CardProfile());
            Navigator.push(context, route);
          },
        ),
        title: new Text('Menghitung Luas & Keliling lingkaran'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => HalamanNama());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
      backgroundColor: Colors.cyan[800],
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            jari = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Jari-Jari lingkaran",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            hintText: 'Jari-Jari'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.teal,
            alignment: Alignment.center,
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Luas lingkaran: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    '$hasil',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Keliling lingkaran: ',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    '$kel',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        var route = new MaterialPageRoute(
                          builder: (BuildContext) => new lingkaran(),
                        );
                        Navigator.of(context).push(route);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal)),
                      child: Text(
                        'HITUNG ULANG',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => CardProfile());
                      Navigator.push(context, route);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.teal)),
                    child: Text(
                      'KEMBALI',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
