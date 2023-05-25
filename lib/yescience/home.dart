import 'package:flutter/material.dart';

import 'components/featured_posts.dart';
import 'components/latest_posts.dart';

class YescienceHomePage extends StatefulWidget {
  const YescienceHomePage({super.key, required this.title});

  final String title;

  @override
  State<YescienceHomePage> createState() => _YescienceHomePageState();
}

class _YescienceHomePageState extends State<YescienceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(children: [
        const Icon(
          Icons.rocket,
          color: Color.fromARGB(255, 223, 99, 5),
        ),
        const SizedBox(width: 8),
        Text(widget.title),
      ])),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: const [
                FeaturedPosts(),
                LatestPosts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
