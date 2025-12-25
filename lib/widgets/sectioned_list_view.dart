// import 'package:flutter/material.dart';
// import 'package:flutter_sectioned_recycler_view/models/section_model.dart';
// import 'section_header.dart';
// import 'section_item.dart';
//
// class SectionedListView extends StatelessWidget {
//   final List<Section<String>> sections;
//
//   const SectionedListView({super.key, required this.sections});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: sections.length,
//       itemBuilder: (context, sectionIndex) {
//         final section = sections[sectionIndex];
//
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SectionHeader(title: section.header),
//             ...section.items.map(
//                   (item) => SectionItem(title: item),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
