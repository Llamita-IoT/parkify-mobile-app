import 'package:flutter/material.dart';
import 'package:parkify_mobile_app/views/intro.dart';
import 'dart:math';

class QrGenerator extends StatefulWidget {
  const QrGenerator({Key? key}) : super(key: key);

  @override
  State<QrGenerator> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {

  int _selectedIndex = 3;
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    var rng = Random();
    var number = rng.nextInt(4);

    return Scaffold(
      appBar: AppBar(
        title: Text('Parkify'),
      ),
      body: Image.asset(
        "assets/images/FQR0$number.png",
        height: 800,
        width: 800,
      ),
      /*Padding( 
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Este es tu QR de reserva',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 360,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/qr0$number.png",
                height: 200,
                width: 200,
              ),
            ),
            Center(
              child: Text(
                'No olvides que tu reserva',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'vence en 20 minutos',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
