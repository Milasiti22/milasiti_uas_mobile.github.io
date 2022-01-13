import 'dart:js';

import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(MaterialApp());
}

class HalamanNama extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => CardProfile());
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
              'Biodata Developer',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.lightBlue.shade100,
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.text_format,
                  color: Colors.teal,
                ),
                title: Text(
                  'Nama Lengkap',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'Mila Siti Salamah',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.insert_drive_file_rounded,
                  color: Colors.teal,
                ),
                title: Text(
                  'NPM',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  '19710130',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.insert_drive_file_rounded,
                  color: Colors.teal,
                ),
                title: Text(
                  'Kelas',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'SI 5A NonReg Banjarbaru',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.business,
                  color: Colors.teal,
                ),
                title: Text(
                  'Program Studi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'Sistem Informasi',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.smartphone,
                  color: Colors.teal,
                ),
                title: Text(
                  'Nomor Handphone',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  '+62 877 6555 3537',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.people_sharp,
                  color: Colors.teal,
                ),
                title: Text(
                  'Alamat',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'Komplek Kelapa Gading Permai, Jl. Ratu Intan No. 1, Kota Banjarbaru, Prov. Kalimantan Selatan',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'Email',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'milasitisalamah22@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlue.shade700)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class HalamanNomor extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
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
              'Kontak dan Media Sosial',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.lightBlue.shade100,
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.smartphone,
                  color: Colors.teal,
                ),
                title: Text(
                  'Nomor Handphone',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  '+62 877 6555 3537',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.local_phone_rounded,
                  color: Colors.teal,
                ),
                title: Text(
                  'Nomor Whatsapp',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  '+62 877 6555 3537',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.people_sharp,
                  color: Colors.teal,
                ),
                title: Text(
                  'Instagram',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  '@mnf.22',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlue.shade700)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class HalamanEmail extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/mila.jpg'),
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
              'Email',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.lightBlue.shade100,
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'Email Utama',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'milasitisalamah22@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.alternate_email,
                  color: Colors.teal,
                ),
                title: Text(
                  'Email Cadangan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'n4b1l4nabila@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.attach_email,
                  color: Colors.teal,
                ),
                title: Text(
                  'Email Keluarga (Anak)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'muhammadfaries063@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlue.shade700)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class HalamanTTL extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/mila.jpg'),
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
              'TTL & Orang Tua',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.lightBlue.shade100,
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.date_range,
                  color: Colors.teal,
                ),
                title: Text(
                  'Tempat & Tanggal Lahir',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'Bandung, 04 April 1982',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.face,
                  color: Colors.teal,
                ),
                title: Text(
                  'Ayah',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'Maman Risman',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.face,
                  color: Colors.teal,
                ),
                title: Text(
                  'Ibu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'Rusminah',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlue.shade700)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
