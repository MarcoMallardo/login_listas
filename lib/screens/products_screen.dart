import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_listas/entities/entities.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});
  static const List<Producto> productos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: Column(
        children: [
          Text(
          'Pantalla de productos',
          ),
        ],
      ),
    );
  }
}