
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
                Text('Hello World!'),

                Text('Bienvenue dans mon application Flutter'),

                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Boîte stylisée avec Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),

                Text('Mon premier Container Flutter'),

                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue[100],
                    ),
                    Icon(
                      Icons.star,
                      size: 100,
                      color: Colors.amber,
                    ),
                    Text(
                      'Superposé !',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: Colors.blue, size: 40),
                    Icon(Icons.star, color: Colors.amber, size: 40),
                    Icon(Icons.settings, color: Colors.grey, size: 40),
                    Icon(Icons.favorite, color: Colors.red, size: 40),
                  ],
                ),

                SizedBox(height: 30),

                // Etape 6 : Deuxieme colonne
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Titre principal',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Sous-titre ou description',
                      style: TextStyle(fontSize: 18),
                    ),
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
