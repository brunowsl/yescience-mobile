import 'package:flutter/material.dart';

class ChooseApp extends StatelessWidget {
  const ChooseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Choose an app',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'You can choose between the YesScience app and the YesScience Blog app. The YesScience app is a social network for scientists, while the YesScience Blog app is a blog about science.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.rocket),
                  title: const Text('YesScience'),
                  subtitle: const Text('Social network for scientists'),
                  onTap: () {
                    Navigator.pushNamed(context, '/yescience');
                  },
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.article),
                  title: const Text('YesScience Blog'),
                  subtitle: const Text('Blog about science'),
                  onTap: () {
                    Navigator.pushNamed(context, '/yescience-blog');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
