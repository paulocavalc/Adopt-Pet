// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, file_names

import 'package:boa_tarde/all-pages/all-pages.dart';
import 'package:flutter/material.dart';

class PageViewer extends StatelessWidget {
  final AllPages page;

  PageViewer({required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page.content,
    );
  }
}
