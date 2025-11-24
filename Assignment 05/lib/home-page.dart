import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("HomePage"),
      ),

      endDrawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 180,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("Name"),
                accountEmail: Text("Email"),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Homepage"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
      ),

      body: const Center(
        child: Text(
          "Homepage",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
