import 'package:flutter/material.dart';
import 'package:mirror_original/features/home/view_model/home_cubit.dart';

Widget buildNavItem(
    HomeCubit homeCubit,
    IconData icon,
    String label,
    int index,
    ) {
  bool isSelected = homeCubit.selectedNavBarIndex == index;

  return GestureDetector(
    onTap: () {
      homeCubit.changeNavBar(index);
    },
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.white : Colors.black),
          if (isSelected) ...[
            const SizedBox(height: 3),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ],
        ],
      ),
    ),
  );
}
