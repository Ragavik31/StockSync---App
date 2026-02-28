import 'package:flutter/material.dart';
import 'vaccine_list_screen.dart';
import 'client_order_placement_screen.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  int _index = 0;

  final _pages = const [
    VaccineListScreen(),            // 🛍 Products page
    ClientOrderPlacementScreen(),   // 🛒 Cart page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StockSync Client"),
      ),

      body: _pages[_index],

      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.medical_services_outlined),
            label: "Products",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "My Cart",
          ),
        ],
      ),
    );
  }
}
