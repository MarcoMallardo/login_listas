import 'package:flutter/material.dart';
import 'package:login_listas/entities/entities.dart';

class ProductsScreen extends StatelessWidget {
  final List<Producto> productos;

  const ProductsScreen({super.key, required this.productos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: productos.isEmpty
          ? const Center(
              child: Text('No hay productos agregados aún.'),
            )
          : ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemCount: productos.length,
              separatorBuilder: (context, index) => const Divider(height: 16),
              itemBuilder: (context, index) {
                final producto = productos[index];
                return ListTile(
                  title: Text(producto.nombre),
                  subtitle: Text(producto.descripcion),
                  trailing: Text('\$${producto.precio.toStringAsFixed(2)}'),
                );
              },
            ),
    );
  }
}