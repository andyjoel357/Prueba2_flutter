import 'package:flutter/material.dart';
void main(){
  runApp(HistorialScreen());
}

class HistorialScreen extends StatelessWidget {
  const HistorialScreen({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Cuenta'),
      ),
      body: Body(), // Llamamos al widget aparte
    );
  }
}
Widget Body() {
  return ListView(
    children: [
      TransactionItem(
        tipo: 'Retiro',
        monto: 30,
        saldo: 450,
      ),
      TransactionItem(
        tipo: 'Depósito',
        monto: 100,
        saldo: 550,
      ),
      TransactionItem(
        tipo: 'Impuestos',
        monto: 20,
        saldo: 530,
      ),
    ],
  );
}

class TransactionItem extends StatelessWidget {
  final String tipo;
  final int monto;
  final int saldo;

  TransactionItem({required this.tipo, required this.monto, required this.saldo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(tipo),
        subtitle: Text('Monto: \$${monto.toString()}'),
        trailing: Text('Saldo: \$${saldo.toString()}'),
      ),
    );
  }
} 