import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_listas/entities/entities.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Producto> productos = [];
  TextEditingController nameInput = TextEditingController();
  TextEditingController descriptionInput = TextEditingController();
  TextEditingController priceInput = TextEditingController();

  bool areInputsValid() {
    final name = nameInput.text.trim();
    final description = descriptionInput.text.trim();
    final priceText = priceInput.text.trim();

    if (name.isEmpty || description.isEmpty) {
      return false;
    }

    final price = double.tryParse(priceText);
    return price != null && price.isFinite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar productos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: TextField(
              controller: nameInput,
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre del producto',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.shopping_bag),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: TextField(
              controller: descriptionInput,
              decoration: InputDecoration(
                hintText: 'Ingrese la descripción del producto',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: TextField(
              controller: priceInput,
              decoration: InputDecoration(
                hintText: 'Ingrese el precio del producto',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.attach_money),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                if (areInputsValid()) {
                  final newProduct = Producto(
                    nombre: nameInput.text.trim(),
                    descripcion: descriptionInput.text.trim(),
                    precio: double.parse(priceInput.text.trim()),
                  );
                  setState(() {
                    productos.add(newProduct);
                    nameInput.clear();
                    descriptionInput.clear();
                    priceInput.clear();
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Por favor, complete todos los campos correctamente.')),
                  );
                }
              },
              child: Text('Agregar producto'),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                context.push('/products');
              },
              child: Text('Ver productos'),
            ),
          )
        ],
      ),
    );
  }
}