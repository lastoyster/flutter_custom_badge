import 'package:flutter/material.dart';
import 'package:flutter_custom_badge/icon_badge.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Icon Badge"),
        actions: [
          IconBadge(
            icon: Icons.notifications_none_outlined,
            onTap: () {},
            count: 3,
          ),
          IconBadge(
            icon: Icons.message_outlined,
            onTap: () {},
            count: 5,
            countBackColor: Colors.blue,
          ),
          IconBadge(
            icon: Icons.settings_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
