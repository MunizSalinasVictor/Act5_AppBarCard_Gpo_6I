import 'package:flutter/material.dart';

void main() => runApp(AppCrunchyroll());

class AppCrunchyroll extends StatelessWidget {
  const AppCrunchyroll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crunchyroll',
      home: Contenido(),
    ); // fin material app
  }
} // fin clase AppCrunchyroll

class Contenido extends StatelessWidget {
  const Contenido({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crunchyroll de Victor'),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          Icon(Icons.more_vert),
          Icon(Icons.movie_creation_sharp),
        ], //Icons
      ),  //AppBar

      drawer: Drawer(

      ), //Drawer

      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Tarjeta Cuadrada
      Container(
        width: 250, // Ancho y alto iguales para que sea cuadrada
        height: 250,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // Gradiente naranja
          gradient: const LinearGradient(
            colors: [Colors.orangeAccent, Colors.deepOrange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Avatar desde la red
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/MunizSalinasVictor/IAmoviles_Act5_AppBarCard_Gpo_6I/refs/heads/main/victor-mendivil.jpg',
              ),
            ),
            const SizedBox(height: 15),
            // Título
            const Text(
              'Victor Muñiz',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Texto color negro
              ),
            ),
            const SizedBox(height: 5),
            // Subtítulo
            const Text(
              'Manager de Contenido',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Texto color negro
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),

    ); //Scaffold
  }
} // fin clase Contenido