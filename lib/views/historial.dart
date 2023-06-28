import 'package:flutter/material.dart';
import 'package:parkify_mobile_app/views/intro.dart';
import 'login.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'qrgenerator.dart';

class Historial extends StatefulWidget {
  const Historial({Key? key}) : super(key: key);

  @override
  State<Historial> createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {

  int _selectedIndex = 2;
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Parkify'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QrGenerator()),
                );
              },
              child: Container(
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Parqueo Actual:')),
                    DataColumn(label: Text('')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Nombre')),
                      DataCell(Text('JM parking')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Tiempo transcurrido')),
                      DataCell(Text('1 hora')),
                    ]),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 3.0), // Estilo del borde
                  borderRadius: BorderRadius.circular(10.0), // Radio de borde (opcional)
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Historial de Parqueos',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 4, // Controls the shadow depth
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Controls the corner radius
                side: BorderSide(color: Colors.grey, width: 1.0), // Adds a border
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre: SB Parking',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Reservado: NO',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'StartTime: 06/06/23 20:54',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'EndTime: 06/06/23 22:54',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'ParkingTime: 2 horas',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Costo: S/ 5',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4, // Controls the shadow depth
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Controls the corner radius
                side: BorderSide(color: Colors.grey, width: 1.0), // Adds a border
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre: Mira Parking',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Reservado: NO',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'StartTime: 07/06/23 19:21',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'EndTime: 07/06/23 20:21',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'ParkingTime: 1 hora',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Costo: S/ 2.5',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4, // Controls the shadow depth
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Controls the corner radius
                side: BorderSide(color: Colors.grey, width: 1.0), // Adds a border
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre: Parking del triunfo',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Reservado: NO',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'StartTime: 08/06/23 15:00',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'EndTime: 08/06/23 17:00',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'ParkingTime: 2 horas',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Costo: S/ 4',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
