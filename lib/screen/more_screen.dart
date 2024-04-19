import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('more'),
      ),
    );
  }
}
