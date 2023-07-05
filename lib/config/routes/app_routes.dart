import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:silver/presentations/screens/user_screen/driver/driver_create_screen.dart';

import '../../presentations/screens/user_screen/client/client_create_screen.dart';
import '../../presentations/screens/user_screen/client/client_screen.dart';
import '../../presentations/screens/screens.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: 'landing',
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'clients',
      path: '/clients',
      builder: (context, state) => const ClientScreen(),
    ),
    GoRoute(
      name: 'createClient',
      path: '/createClient',
      builder: (context, state) => const ClientCreate(),
    ),
    GoRoute(
      name: 'drivers',
      path: '/drivers',
      builder: (context, state) => const DriverScreen(),
    ),
    GoRoute(
      name: 'createDriver',
      path: '/createDriver',
      builder: (context, state) => const DriverCreate(),
    ),
  ]);
});