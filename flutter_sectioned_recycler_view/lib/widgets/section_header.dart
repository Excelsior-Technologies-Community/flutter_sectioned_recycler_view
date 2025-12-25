import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool isExpanded;
  final VoidCallback onTap;

  const SectionHeader({
    super.key,
    required this.title,
    this.icon,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      elevation: 2,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              if (icon != null)
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, size: 18, color: Colors.blue),
                ),

              if (icon != null) const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),

              AnimatedRotation(
                turns: isExpanded ? 0.5 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 26,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
