
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
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Etape 2 : Deux textes
                const Text('Hello World!'),
                const Text(
                  'Bienvenue dans mon application Flutter',
                ),

                // Etape 3 : Container stylise
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Boîte stylisée avec Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),

                const Text(
                  'Mon premier Container Flutter',
                ),

                const SizedBox(height: 20),

                // Etape 4 : Stack avec superposition
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue[100],
                    ),
                    const Icon(
                      Icons.star,
                      size: 100,
                      color: Colors.amber,
                    ),
                    const Text(
                      'Superposé !',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Etape 5 : Row avec quatre icones
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  children: const [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}




