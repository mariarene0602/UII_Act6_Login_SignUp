import 'package:flutter/material.dart';
import 'mis_pantallas/login_screen.dart';
import 'mis_pantallas/signup_screen.dart';

void main() {
  runApp(const CanisAcademiaApp());
}

class CanisAcademiaApp extends StatelessWidget {
  const CanisAcademiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canis Academia',
      theme: ThemeData(
        primaryColor: const Color(0xFF001F3F), // Azul Marino
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  // Colores constantes para usar en todo el archivo
  final Color navyBlue = const Color(0xFF001F3F);
  final Color gold = const Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF001F3F),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Canis Academia provides extraordinary dog training tutorials. Join our pack!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 40),
              
              // Espacio para la ilustración (Icono por ahora)
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.05),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(Icons.pets, size: 100, color: gold),
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Botón de Login (Estilo Outlined / Blanco con borde)
              SizedBox(
                width: double.infinity,
                height: 55,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: navyBlue, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text("Login", style: TextStyle(color: navyBlue, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Botón de Sign Up (Azul Marino sólido)
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: navyBlue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text("Sign up", style: TextStyle(color: gold, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}