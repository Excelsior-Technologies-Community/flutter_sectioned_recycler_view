import 'package:flutter/material.dart';
import '../models/section_model.dart';
import '../widgets/expandable_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = [
      SectionModel(
        title: "E-Commerce Categories",
        icon: Icons.shopping_cart,
        items: [
          "Top Hits",
          "Workout",
          "Relax",
          "Daily Essentials",
        ],
      ),

      SectionModel(
        title: "Music Playlists",
        icon: Icons.music_note,
        items: [
          "Focus Beats",
          "Old Classics",
          "Romantic Hits",
          "Party Songs",
        ],
      ),

      SectionModel(
        title: "Contacts",
        icon: Icons.contacts,
        items: [
          "Family",
          "Friends",
          "Work",
          "Emergency",
        ],
      ),

      SectionModel(
        title: "Settings",
        icon: Icons.settings,
        items: [
          "Account",
          "Notifications",
          "Privacy",
          "Security",
        ],
      ),

      SectionModel(
        title: "Orders",
        icon: Icons.receipt_long,
        items: [
          "My Orders",
          "Track Order",
          "Order History",
        ],
      ),

      SectionModel(
        title: "Help & Support",
        icon: Icons.help_outline,
        items: [
          "FAQs",
          "Contact Support",
          "Report a Problem",
        ],
      ),

      SectionModel(
        title: "Profile",
        icon: Icons.person,
        items: [
          "View Profile",
          "Edit Profile",
          "Logout",
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sectioned Dropdown"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: sections
              .map((section) => ExpandableSection(section: section))
              .toList(),
        ),
      ),
    );
  }
}
