import 'package:flutter/material.dart';
import 'package:login_listas/entities/entities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  const List<Producto> productos = [
    Producto(nombre: 'Producto 1', precio: 10.0),
    Producto(nombre: 'Producto 2', precio: 20.0),
    Producto(nombre: 'Producto 3', precio: 30.0),
    Producto(nombre: 'Producto 4', precio: 40.0),
    Producto(nombre: 'Producto 5', precio: 50.0),
    Producto(nombre: 'Producto 6', precio: 60.0),
    Producto(nombre: 'Producto 7', precio: 70.0),
    Producto(nombre: 'Producto 8', precio: 80.0),
    Producto(nombre: 'Producto 9', precio: 90.0),
    Producto(nombre: 'Producto 10', precio: 100.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
          'Pantalla de inicio',
          ),
        ],
      ),
    );
  }
}