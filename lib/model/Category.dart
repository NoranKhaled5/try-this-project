import 'dart:ui';

class Category {
  final String icon, title;
  final Color bgColor;


  Category({required this.icon, required this.title,    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/watch-classic1-com (1).svg",
    title: "ALL",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Category(
    icon: "assets/icons/watch-classic1-com (1).svg",
    title: "Classic",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Category(
    icon: "assets/icons/watch-classic1-com (1).svg",
    title: "Smart",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Category(
    icon: "assets/icons/watch-classic1-com (1).svg",
    title: "Sport",
    bgColor: const Color(0xFFFEFBF9),
  ),
];