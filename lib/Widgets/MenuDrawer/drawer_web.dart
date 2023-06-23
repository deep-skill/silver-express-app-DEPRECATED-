import 'package:flutter/material.dart';

class WebMenu extends StatelessWidget {
  final String selectedItem;

  const WebMenu({Key? key, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Principal'),
            selected: selectedItem == 'principal',
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
              Navigator.pushReplacementNamed(
                  context, '/principal'); // Navegar a la vista principal
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.supervisor_account),
            title: const Text('Usuarios'),
            initiallyExpanded: selectedItem == 'usuarios',
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Gestión de Conductores'),
                selected: selectedItem == 'conductores',
                onTap: () {
                  Navigator.pop(context); // Cerrar el menú
                  Navigator.pushReplacementNamed(context,
                      '/conductores'); // Navegar a la vista de gestión de conductores
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Gestión de Clientes'),
                selected: selectedItem == 'clientes',
                onTap: () {
                  Navigator.pop(context); // Cerrar el menú
                  Navigator.pushReplacementNamed(context,
                      '/clientes'); // Navegar a la vista de gestión de clientes
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('Viajes'),
            selected: selectedItem == 'viajes',
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
              Navigator.pushReplacementNamed(
                  context, '/viajes'); // Navegar a la vista de viajes
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Empresas'),
            selected: selectedItem == 'empresas',
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
              Navigator.pushReplacementNamed(
                  context, '/empresas'); // Navegar a la vista de empresas
            },
          ),
        ],
      ),
    );
  }
}