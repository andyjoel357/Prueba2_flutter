import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_prueba_02/screens/Cuenta.dart';
import 'package:flutter_prueba_02/screens/Historial.dart';
import 'package:flutter_prueba_02/screens/Login.dart';

Future<void> main() async {
  runApp(RegistroScreen());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
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
        title: const Text('Title'),
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo(context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: <Widget>[
        NickName(),
        SizedBox(height: 20),
        User(),
        SizedBox(height: 20),
        Password(),
        SizedBox(height: 20),
        BotonReg(context),
        SizedBox(height: 20),
        BtnSiguietne(context)
      ],
    ),
  );
}

final TextEditingController _nickN = TextEditingController();
Widget NickName() {
  return TextField(
    controller: _nickN,
    decoration: InputDecoration(
      hintText: "Nick Name",
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
      ),
    ),
  );
}

final TextEditingController _users = TextEditingController();
Widget User() {
  return TextField(
    controller: _users,
    decoration: InputDecoration(
      hintText: "Usuario",
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
      ),
    ),
  );
}

final TextEditingController _password = TextEditingController();
Widget Password() {
  return TextField(
    controller: _password,
    obscureText: true,
    decoration: InputDecoration(
      hintText: "Contraseña",
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
      ),
    ),
  );
}

Widget BotonReg(context) {
  return ElevatedButton(
    onPressed: () {
      registrarse(context);
    },
    child: Text("Registrarse"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue, // background color
      foregroundColor: Colors.white, // text color
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
Widget BtnSiguietne(context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cuenta(),
      ),
    );
    },
    child: Text("Siguiente Ventana"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 57, 241, 226), // background color
      foregroundColor: Colors.white, // text color
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

Future<void> registrarse(context) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _users.text,
      password: _password.text,
    );
    /////////////////////
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
    ///
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
      DatabaseReference ref =
        FirebaseDatabase.instance.ref("usuarios/" + _nickN.text);
    await ref.set({
      "Nick": _nickN.text,
      "correo": _users.text,
    });

}
