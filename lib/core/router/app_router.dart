import 'package:go_router/go_router.dart';
import 'package:login_listas/screens/home_screen.dart';
import 'package:login_listas/screens/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ]
);