import 'package:flutter/material.dart';
import '../models/section_model.dart';
import 'section_header.dart';
import 'section_item.dart';

class ExpandableSection extends StatefulWidget {
  final SectionModel section;

  const ExpandableSection({super.key, required this.section});

  @override
  State<ExpandableSection> createState() => _ExpandableSectionState();
}

class _ExpandableSectionState extends State<ExpandableSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
              title: widget.section.title,
              icon: widget.section.icon,
              isExpanded: widget.section.isExpanded,
              onTap: () {
                setState(() {
                  widget.section.isExpanded = !widget.section.isExpanded;
                });
              },
            ),

            ClipRect(
              child: AnimatedSize(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                child: widget.section.isExpanded
                    ? Column(
                  children: widget.section.items
                      .map((item) =>
                      SectionItem(title: item))
                      .toList(),
                )
                    : const SizedBox(height: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
