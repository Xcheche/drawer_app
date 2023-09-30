import 'package:flutter/material.dart';

import 'item_one_page.dart';
import 'item_two_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('My HomePage'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 60.0,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 98, 100, 105)),
                child: Text('Drawer Header'),
              ),
            ),
            ListTile(
              title: const Text('Item one'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemOnePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Item two'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemTwoPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
