import 'package:flutter/cupertino.dart';

class SocialIcons extends StatelessWidget {
  SocialIcons({
    super.key,
    required this.icon,
  });

  //icon data
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon),
    );
  }
}