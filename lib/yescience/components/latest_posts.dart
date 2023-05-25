import 'package:flutter/material.dart';

import '../types/Post.dart';

class LatestPosts extends StatefulWidget {
  const LatestPosts({super.key});

  @override
  State<LatestPosts> createState() => _LatestPostsState();
}

class _LatestPostsState extends State<LatestPosts> {
  List<Post> latestPosts = [
    Post(
      image:
          'https://static1.minhavida.com.br/treatments/a8/88/34/69/celulas-tronco-orig-1.jpg',
      title: 'O incrível mundo das células-tronco',
      subtitle:
          'As células-tronco são um tema fascinante no campo da ciência e têm despertado cada vez mais interesse.',
      author: 'Bruno Lobão',
      date: 'Mai 23, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      comments: 45,
      likes: 15,
      visualizations: 113,
    ),
    Post(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThO3TwyC9dVp93Le_WPhOLkoSRApjoosWF2Q&usqp=CAU',
      title: 'The Impact of Artificial Intelligence on Healthcare',
      subtitle: 'Exploring the transformative power of AI in the medical field',
      author: 'John Smith',
      date: 'Oct 11, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      comments: 10,
      likes: 2,
      visualizations: 59,
    ),
    Post(
      image:
          'https://fia.com.br/wp-content/uploads/2022/06/crise-climatica-2040-ambiental-relatorios-impactos-ac-oes-1280x720.jpg',
      title: 'A crise climática e seus impactos na biodiversidade',
      subtitle:
          'Vamos discutir os principais efeitos das mudanças climáticas na biodiversidade.',
      author: 'Lorraine Frederico',
      date: 'Jan 25, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      comments: 63,
      likes: 52,
      visualizations: 352,
    ),
    Post(
      image:
          'http://www.each.usp.br/nanoeach/wp-content/uploads/2022/04/IMG_NANO-1024x618.jpg',
      title: 'Os avanços da nanotecnologia na medicina',
      subtitle:
          'O estudo, publicado na revista “Nature Chemistry”, envolve bioquímica sintética, síntese de DNA, nanotecnologia e outras tecnologias.',
      author: 'Bruno Lobão',
      date: 'Dez 02, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      comments: 2,
      likes: 0,
      visualizations: 16,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Latest Posts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 212.0 * latestPosts.length,
              child: ListView.separated(
                primary: false,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                scrollDirection: Axis.vertical,
                itemCount: latestPosts.length,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(latestPosts[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Wrap(
                              runSpacing: 5,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.comment,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        latestPosts[index].comments.toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        latestPosts[index].likes.toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        latestPosts[index]
                                            .visualizations
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        latestPosts[index].date,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        latestPosts[index].author,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.5),
                                  Colors.black.withOpacity(0.3),
                                  Colors.black.withOpacity(0.0),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  latestPosts[index].title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  latestPosts[index].subtitle,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
