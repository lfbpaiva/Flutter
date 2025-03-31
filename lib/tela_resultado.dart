import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    String userChoice = args['userChoice'];
    String appChoice = args['appChoice'];

    String result = 'Empate';
    String resultImage = 'assets/images/empate.png';

    if ((userChoice == 'pedra' && appChoice == 'tesoura') ||
        (userChoice == 'papel' && appChoice == 'pedra') ||
        (userChoice == 'tesoura' && appChoice == 'papel')) {
      result = 'Vitória';
      resultImage = 'assets/images/vitoria.png';
    } else if ((userChoice == 'pedra' && appChoice == 'papel') ||
               (userChoice == 'papel' && appChoice == 'tesoura') ||
               (userChoice == 'tesoura' && appChoice == 'pedra')) {
      result = 'Derrota';
      resultImage = 'assets/images/derrota.png';
    }

    String getImage(String choice) {
      return 'assets/images/$choice.png';
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Jokenpô'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Text('Escolha do APP:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Image.asset(getImage(appChoice), width: 150, height: 150), 
              SizedBox(height: 40),
             
              Text('Escolha do Usuário:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Image.asset(getImage(userChoice), width: 150, height: 150),  
              SizedBox(height: 40),
             
              Image.asset(resultImage, width: 200, height: 200),  
              SizedBox(height: 20),
          
              Text(result, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
             
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                ),
                child: Text(
                  'Jogar Novamente',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
