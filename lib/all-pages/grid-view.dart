// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element, prefer_const_literals_to_create_immutables, file_names

import 'package:boa_tarde/all-pages/all-pages.dart';
import 'package:boa_tarde/all-pages/pages-view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridPetApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 45, 45, 45),
          centerTitle: true,
          title: Center(
            child: Text("Adopt Pet",
                style: GoogleFonts.calistoga(
                    color: Color.fromARGB(255, 223, 204, 152), fontSize: 38)
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Color.fromARGB(255, 223, 204, 152),
            unselectedLabelColor: Color.fromARGB(255, 157, 157, 157),
            labelStyle: TextStyle(fontSize: 16),
            labelPadding:
              EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0
            ),
            indicator: BoxDecoration(
              color: Color.fromARGB(255, 36, 36, 36),
            ),
            tabs: AllPages.allPages.map((page) => Tab(text: page.title,),).toList(),
          ),
        ),
        body: TabBarView(
          children: AllPages.allPages.map((page) => PageViewer(page: page,),).toList(),
        ),
      ),
    );
  }
}
