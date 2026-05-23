class Usuario {
  final String email;
  final String pass;

  const Usuario({
    required this.email,
    required this.pass,
  });
}

class Producto {
  final String nombre;
  final String descripcion;
  final double precio;

  const Producto({
    required this.nombre,
    required this.descripcion,
    required this.precio,
  });
}