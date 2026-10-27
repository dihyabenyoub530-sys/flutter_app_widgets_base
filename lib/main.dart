

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      home: Scaffold(
        backgroundColor: Colors.purple.shade50,
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Etape 2 : Textes
                const Text(
                  'Hello World!',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bienvenue dans mon application Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 30),

                // Etape 3 : Container stylise
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Boîte stylisée avec Container',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Mon premier Container Flutter',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 15),

                // Etape 4 : Stack
                SizedBox(
                  width: 220,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        width: 220,
                        height: 220,
                        color: Colors.blue.shade100,
                      ),
                      const Positioned(
                        top: 30,
                        right: 20,
                        child: Icon(
                          Icons.star,
                          size: 100,
                          color: Colors.amber,
                        ),
                      ),
                      const Positioned(
                        top: 5,
                        right: 5,
                        child: Text(
                          'Superposé !',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Etape 5 : Row avec icones
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 40,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 40,
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // Etape 6 : Column
                const Column(
                  children: [
                    Text(
                      'Titre principal',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Sous-titre ou description',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Icon(
                      Icons.thumb_up,
                      color: Colors.green,
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

