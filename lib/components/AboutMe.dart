import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  AboutMe({
    super.key,
    required this.data,
  });

  String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(data)),
          ),
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
