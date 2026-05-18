import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_listas/entities/entities.dart';
//context.go('/home')

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  List<Usuario> usuarios = [
    Usuario(email: 'Marco@gmail.com', pass: 'Marco123'),
    Usuario(email: 'Martin@gmail.com', pass: 'Martin123'),
    Usuario(email: 'Tomi@gmail.com', pass: 'Tomi123'),
    Usuario(email: 'Contre@gmail.com', pass: 'Contre123'),
    Usuario(email: 'Tizi@gmail.com', pass: 'Tizi123'),
    Usuario(email: 'Mati@gmail.com', pass: 'Mati123'),
    Usuario(email: 'Joel@gmail.com', pass: 'Joel123'),
    Usuario(email: 'Thiago@gmail.com', pass: 'Thiago123'),
    Usuario(email: 'Thomas@gmail.com', pass: 'Thomas123'),
    Usuario(email: 'Kenai@gmail.com', pass: 'Kenai123'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                controller: emailInput,
                decoration: InputDecoration(
                  hintText: 'Ingrese su correo',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.alternate_email),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                controller: passwordInput,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Ingrese su contraseña',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      String email = emailInput.text;
                      String pass = passwordInput.text;
                      String message;

                      if (email.isEmpty || pass.isEmpty) {
                        message = 'Ingrese su mail y contraseña';
                      } else {
                        bool userExists = usuarios.any((usuario) => usuario.email == email);
                        if (!userExists) {
                          message = 'Correo o contraseña incorrectos';
                        } else {
                          int indexUser = usuarios.indexWhere((usuario) => usuario.email == email);
                          if (usuarios[indexUser].pass != pass) {
                            message = 'Correo o contraseña incorrectos';
                          } else {
                          message = 'Inicio de sesión exitoso';
                          context.go('/home');
                          }
                        }
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message)),
                      );
                    },
                    child: Text('Confirmar'),
                  );
                },
              ),
            ),
          ],
        ),
    );
  }
}