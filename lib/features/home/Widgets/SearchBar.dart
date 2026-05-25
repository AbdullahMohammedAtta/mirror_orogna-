import 'package:flutter/material.dart';

Widget buildSearchBar() {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFFF3F3F3),
      borderRadius: BorderRadius.circular(18),
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Search sneakers...',
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 16),
      ),
    ),
  );
}
