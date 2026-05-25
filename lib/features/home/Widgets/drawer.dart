import 'package:flutter/material.dart';

import '../../../core/utils/functions.dart';
import '../../auth/view/login_page.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'ABU MOUSA',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(width: 80, height: 2, color: Colors.black),
          const Spacer(),
          TextButton.icon(
            onPressed: () {
              navigateTo(context, LoginPage());
            },
            icon: const Icon(Icons.login),
            label: const Text('Login'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}
