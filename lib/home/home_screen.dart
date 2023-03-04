import 'package:flutter/material.dart';
import 'package:my_dzikir/doa/list_doa.dart';
import 'package:my_dzikir/home/header_content.dart';
import 'package:my_dzikir/home/menu_content.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HeaderContent(),
        // ContentMenu(),
        ListDoa(),
      ],
    );
  }
}
