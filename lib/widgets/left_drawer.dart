import 'package:carcommerce/screens/list_carentry.dart';
import 'package:flutter/material.dart';
import 'package:carcommerce/cars.dart';
import 'package:carcommerce/screens/carsentry_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: const Column(
            children: [
              Text(
                'Car Commerce',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // Padding(padding: EdgeInsets.all(8)),
              Text(
                "Beli mobil terbaik di Car Commerce!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_rental_rounded),
            title: const Text('Tambah Mobil'),
            // Bagian redirection ke MobilEntryFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CarEntryFormPage(),
                  ));
            },
          ),
          ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Mobil'),
              onTap: () {
                  // Route menu ke halaman Mobil
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CarEntryPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}