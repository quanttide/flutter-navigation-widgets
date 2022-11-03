/// Horizontal Navigation Bar
///
/// References:
///   - https://blog.hubspot.com/website/main-website-navigation-ht
///   - https://www.youtube.com/watch?v=wmQbvkXnvbM&t=225s
///   - https://www.youtube.com/watch?v=lMjF8jZSzSE&t=502s

import "package:flutter/material.dart";


/// Horizontal Navigation Bar
class HorizontalNavigationBar extends StatelessWidget {
  final List<Map<String, String>> navItems;

  const HorizontalNavigationBar({
    super.key,
    required this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: navItems.map(
              (item) => InkWell(
              child: Text(item['title']!),
              onTap: (){
                Navigator.pushNamed(context, item['route']!);
              }
          )
      ).toList(),
    );
  }
}
