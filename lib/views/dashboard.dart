import 'package:flutter/material.dart';
import 'package:parkify_mobile_app/views/intro.dart';
import 'login.dart';
import 'historial.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  String? dd_distrito = 'Lince';
  int _selectedIndex = 1;
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

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Buscar',
                    style: TextStyle(fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Distrito: ',
                  style: TextStyle(fontSize: 20),
                ),
                DropdownButton<String>(
                  value: dd_distrito,
                  items: <String>[
                    'Ancón',
                    'Ate Vitarte',
                    'Barranco',
                    'Breña',
                    'Carabayllo',
                    'Chaclacayo',
                    'Chorrillos',
                    'Cieneguilla',
                    'Comas',
                    'El Agustino',
                    'Independencia',
                    'Jesús María',
                    'La Molina',
                    'La Victoria',
                    'Lima',
                    'Lince',
                    'Los Olivos',
                    'Lurigancho',
                    'Lurín',
                    'Magdalena del Mar',
                    'Miraflores',
                    'Pachacamac',
                    'Pucusana',
                    'Pueblo Libre',
                    'Puente Piedra',
                    'Punta Hermosa',
                    'Punta Negra',
                    'Rímac',
                    'San Bartolo',
                    'San Borja',
                    'San Isidro',
                    'San Juan de Lurigancho',
                    'San Juan de Miraflores',
                    'San Luis',
                    'San Martín de Porres',
                    'San Miguel',
                    'Santa Anita',
                    'Santa María del Mar',
                    'Santa Rosa',
                    'Santiago de Surco',
                    'Surquillo',
                    'Villa El Salvador',
                    'Villa María del Triunfo',
                  ].map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dd_distrito = newValue;
                    });
                  },
                ),
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Nombre')),
                    DataColumn(label: Text('Distrito')),
                  ],
                  rows: [
                    DataRow(cells: [

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('JM parking'))),

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('Jesús María'))),
                    ]),
                    DataRow(cells: [

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('Mira Parking'))),

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('Miraflores'))),
                    ]),
                    DataRow(cells: [

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('Parking del triunfo'))),

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('Villa María del Triunfo'))),
                    ]),
                    DataRow(cells: [

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('SB Parking'))),

                      DataCell(GestureDetector(onTap:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Historial()),
                      );},child:Text('San Borja'))),
                    ]),
                  ],
                )
              ],
            ),
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
