# ✨SectionedRecyclerView

A Flutter widget that provides a sectioned, expandable dropdown list (RecyclerView-like behavior) with icons, smooth animations, and multiple independent sections.

##### This package is useful for:
* Sectioned dropdown menus
* Category lists
* Settings screens
* Filter panels
* Expandable grouped lists
---
## ✨ Features
* ✅ Multiple expandable sections
* ✅ Sections expanded by default
* ✅ Smooth expand / collapse animation
* ✅ Icons support for section headers
* ✅ No layout jump when collapsing
* ✅ Clean & reusable widgets
* ✅ Easy to integrate in any Flutter app
---
## 📸 Preview
![screen-20251225-1346582](https://github.com/user-attachments/assets/681d14fa-bfae-4678-a6b2-db9539cc62af)

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_sectioned_recycler_view:
    path: ../flutter_sectioned_recycler_view  # For local development
```
from git:
```
dependencies:
  flutter_sectioned_recycler_view:
    git:
      url: https://github.com/yourusername/flutter_sectioned_recycler_view.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---

## 📂 Folder Structure
```
lib/
│
├── flutter_sectioned_recycler_view.dart
│
├── models/
│   └── section_model.dart
│
└── widgets/
    ├── expandable_section.dart
    ├── section_header.dart
    └── section_item.dart
```
---
## 📦 Library Export
```
library flutter_sectioned_recycler_view;

export 'models/section_model.dart';
export 'widgets/expandable_section.dart';
export 'widgets/section_header.dart';
export 'widgets/section_item.dart';

```
---
## 🧩 Usage Example
### 1️⃣ Import the package
```
import 'package:flutter_sectioned_recycler_view/flutter_sectioned_recycler_view.dart';
```

## 2️⃣ Create Sections
```
final sections = [
  SectionModel(
    title: "Shopping",
    icon: Icons.shopping_cart,
    items: ["Electronics", "Fashion", "Groceries"],
  ),
  SectionModel(
    title: "Music",
    icon: Icons.music_note,
    items: ["Rock", "Jazz", "Pop"],
  ),
];
```
## 3️⃣ Use in UI
```
ListView(
  padding: const EdgeInsets.all(12),
  children: sections
      .map((section) => ExpandableSection(section: section))
      .toList(),
);
```
---
## 🧠 SectionModel
```
class SectionModel {
  final String title;
  final IconData? icon;
  final List<String> items;
  bool isExpanded;

  SectionModel({
    required this.title,
    required this.items,
    this.icon,
    this.isExpanded = true,
  });
}
```
---
## ⚙️ Behavior
* All sections are expanded by default
* Clicking on header toggles expand/collapse
* When collapsed, items are hidden without shifting layout
* Each section works independently

---
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
