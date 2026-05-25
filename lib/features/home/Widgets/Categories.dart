import 'package:flutter/material.dart';

import '../view_model/home_cubit.dart';

Widget buildCategories(HomeCubit homeCubit, BuildContext context) {
  return SizedBox(
    height: 50,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        bool isSelected = homeCubit.selectedCategoriesIndex == index;

        return GestureDetector(
          onTap: () {
            homeCubit.changeCategories(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : const Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                homeCubit.categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 12),
      itemCount: homeCubit.categories.length,
    ),
  );
}
