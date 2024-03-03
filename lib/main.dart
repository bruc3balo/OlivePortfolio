import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:olive_portolio/pages/home.dart';
import 'package:olive_portolio/theme.dart';

void main() {
  runApp(const MyApp());
}

enum TabPages {
  home("Home"),
  projects("Projects");

  final String value;

  const TabPages(this.value);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Olive Mbugua',
      theme: purpleTheme,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final List<TabPages> pages = TabPages.values;

  late final TabController controller = TabController(
    length: pages.length,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Olive Wambui",
          style: textTheme.displayLarge,
        ),
        centerTitle: false,
        backgroundColor: Colors.white.withOpacity(0.5),
        toolbarHeight: 105,
        actions: [
          SizedBox(
            width: 200,
            child: TabBar(
              tabAlignment: TabAlignment.center,
              controller: controller,
              tabs: pages
                  .map(
                    (e) => Tab(
                  text: e.value,
                ),
              )
                  .toList(),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Contact Me"),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: TabBarView(
        controller: controller,
        children: pages
            .map(
              (e) => switch (e) {
            TabPages.home => const HomePage(),
            TabPages.projects => const ProjectsPage(),
          },
        ).toList(),
      ),
    );
  }
}



class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Projects"),
    );
  }
}
