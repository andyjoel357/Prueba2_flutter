import 'package:flutter/material.dart';
import 'package:flutter_prueba_02/screens/regsitro.dart';

void main (){
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      body: Body(context),
    );
  }
}

Widget Body(context) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "data:image/jpeg;base64,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"),
            fit: BoxFit.cover)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Usuario(),
        Password(),
        Boton(context),
        Registro(context)
      ],
    ),
  );
}

final TextEditingController _user = TextEditingController();
Widget Usuario() {
  return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        controller: _user,
        decoration: InputDecoration(
            hintText: "Ingrese Correo", fillColor: Colors.grey, filled: true),
      ));
}

final TextEditingController _pass = TextEditingController();
Widget Password() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
        padding: const EdgeInsets.all(20),
        child: TextField(
          controller: _pass,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: 'Ingrese Contraseña',
            fillColor: Colors.grey,
            filled: true,
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    ],
  );
}

Widget Boton(context) {
  return Container(
    width: 200,
    child: OutlinedButton(
      onPressed: () {
      login(context);
      },
      child: Text("Logearse"),
      style: OutlinedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.secondary, // Use foregroundColor instead of primary
        side: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2), // Use colorScheme.secondary instead of accentColor
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}
Widget Registro(context) {
  return Container(
    width: 200,
    child: OutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistroScreen()));
      },
      child: Text("Registrarse"),
      style: OutlinedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.secondary, // Use foregroundColor instead of primary
        side: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2), // Use colorScheme.secondary instead of accentColor
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}

final TextEditingController _controller = TextEditingController();
Future<void> login(context) async {
  // try {
  //   final credential = await FirebaseAuth.instance
  //       .signInWithEmailAndPassword(email: _user.text, password: _pass.text);
  //   //////////////////
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => Cartelera()));
  //   ///////////////////
  // } on FirebaseAuthException catch (e) {
  //   if (e.code == 'user-not-found') {
  //     print('No user found for that email.');
  //   } else if (e.code == 'wrong-password') {
  //     print('Wrong password provided for that user.');
  //   }
  }