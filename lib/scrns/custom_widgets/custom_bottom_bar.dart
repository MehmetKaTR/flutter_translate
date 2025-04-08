import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final Function(int)
  onItemTapped; // onItemTapped fonksiyonu parametre olarak alınacak

  const CustomBottomBar({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            iconSize: 28,
            onPressed: () {
              onItemTapped(0); // HomePage için 0
            },
          ),
          IconButton(
            icon: const Icon(Icons.language),
            iconSize: 28,
            onPressed: () {
              onItemTapped(1); // Show Illustrations sayfası için 1
            },
          ),
          IconButton(
            icon: const Icon(Icons.bookmark),
            iconSize: 26,
            onPressed: () {
              onItemTapped(2); // BookmarkPage için 2
            },
          ),
          IconButton(
            icon: const Icon(Icons.folder),
            iconSize: 24,
            onPressed: () {
              onItemTapped(3); // FolderPage için 3
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            iconSize: 24,
            onPressed: () {
              onItemTapped(4); // ProfilePage için 4
            },
          ),
        ],
      ),
    );
  }
}
