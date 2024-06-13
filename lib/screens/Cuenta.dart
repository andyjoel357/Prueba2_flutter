import 'package:flutter/material.dart';
import 'package:flutter_prueba_02/main.dart';
import 'package:flutter_prueba_02/screens/Historial.dart';

void main (){
  runApp(Cuenta());
}
class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indice=0;
  @override
  Widget build(BuildContext context) {
    List <Widget> screens=[
      Body(),
      HistorialScreen(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
     
     body: screens[indice],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: indice,
        onTap: (valor){
          setState(() {
            indice= valor;
            print(indice);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.adb_sharp), label :"Cuenta"),
          BottomNavigationBarItem(icon: Icon(Icons.add_to_photos_rounded), label:"Historial")
        ],
      ),
    );
  }
}

Widget Body() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          // Imagen de usuario
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGPKAfT_CZHHhQOPWj9AIHcah9e7RVmZTclpsI9bog138R5bN5QhvPEkg5m-XfTSVQq20&usqp=CAU'),
          ),
          SizedBox(height: 20),

          // Número de cuenta
          Text(
            'Número de cuenta: 1234567890',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),

          // Valor total de la cuenta
          Text(
            'Valor total: \$1,234.56',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  