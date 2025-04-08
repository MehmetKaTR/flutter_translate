import 'package:flutter/material.dart';

class Pills extends StatelessWidget {
  final double width;
  const Pills({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final double spacing = 10.0;
    final double pillWidth = (width - spacing * 2) / 3;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        width: width,
        color: Colors.transparent,
        child: Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            _buildPill(
              icon: Icons.favorite,
              label: 'Favorites',
              width: pillWidth,
              context: context,
            ),
            _buildPill(
              icon: Icons.history,
              label: 'History',
              width: pillWidth,
              context: context,
            ),
            _buildPill(
              icon: Icons.group,
              label: 'Member',
              width: pillWidth,
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPill({
    required IconData icon,
    required String label,
    required double width,
    required BuildContext context,
  }) {
    // Font boyutunu ekran boyutuna göre dinamik ayarlamak
    final double baseFontSize = 14;

    // Get the TextScaler instance
    final textScaler = MediaQuery.of(context).textScaler;

    // Scale the font size using the scale method of TextScaler
    final double fontSize = textScaler.scale(baseFontSize);

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 18, color: Colors.black),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: fontSize, // Dinamik font boyutu
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.57,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
