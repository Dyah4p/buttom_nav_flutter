import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/kucing.jpg'),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.edit, size: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Dyah Purwaningsih',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: jihoon@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Telepon: 0847878998899',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
