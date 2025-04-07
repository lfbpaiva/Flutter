import 'dart:math';
import 'package:flutter/material.dart';
import 'tela_resultado.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/result': (context) => Result(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String appChoice = 'pedra';

  void generateAppChoice() {
    final random = Random();
    int randomChoice = random.nextInt(3);
    if (randomChoice == 0) {
      appChoice = 'pedra';
    } else if (randomChoice == 1) {
      appChoice = 'papel';
    } else {
      appChoice = 'tesoura';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Jokenpô'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(16),
              child: Text(
                'Jokenpô',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/padrao.png'),
            SizedBox(height: 10),
            Text(
              'Escolha do APP',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    generateAppChoice();
                    Navigator.pushNamed(context, '/result', arguments: {
                      'userChoice': 'pedra',
                      'appChoice': appChoice,
                    });
                  },
                  child: Image.asset('assets/images/pedra.png', width: 100, height: 100),
                ),
                GestureDetector(
                  onTap: () {
                    generateAppChoice();
                    Navigator.pushNamed(context, '/result', arguments: {
                      'userChoice': 'papel',
                      'appChoice': appChoice,
                    });
                  },
                  child: Image.asset('assets/images/papel.png', width: 100, height: 100),
                ),
                GestureDetector(
                  onTap: () {
                    generateAppChoice();
                    Navigator.pushNamed(context, '/result', arguments: {
                      'userChoice': 'tesoura',
                      'appChoice': appChoice,
                    });
                  },
                  child: Image.asset('assets/images/tesoura.png', width: 100, height: 100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
