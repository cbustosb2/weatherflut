import 'package:flutter/material.dart';
import 'package:weatherflut/ui/cities/cities_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _handleNavigatePress(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const CitiesPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset('assets/welcome.jpg', fit: BoxFit.fill),
          ),
          SafeArea(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 250.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 60,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      "Hola,\nBienvenido",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "¿Qué te parece si agregamos\nuna nueva ciudad?",
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    ElevatedButton.icon(
                      label: const Text("Agregar ciudad"),
                      icon: const Icon(Icons.add),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        onPrimary: Colors.white,
                        onSurface: Colors.grey,
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () => _handleNavigatePress(context),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
