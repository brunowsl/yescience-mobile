import 'package:flutter/material.dart';

import '../types/Post.dart';

class FeaturedPosts extends StatefulWidget {
  const FeaturedPosts({super.key});

  @override
  State<FeaturedPosts> createState() => _FeaturedPostsState();
}

class _FeaturedPostsState extends State<FeaturedPosts> {
  List<Post> featuredPosts = [
    Post(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThO3TwyC9dVp93Le_WPhOLkoSRApjoosWF2Q&usqp=CAU',
      title: 'The Impact of Artificial Intelligence on Healthcare',
      subtitle: 'Exploring the transformative power of AI in the medical field',
      author: 'John Smith',
      date: 'May 23, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      comments: 32,
      likes: 10,
      visualizations: 100,
    ),
    Post(
      image:
          'https://gmo-research.com/application/files/5716/6080/5815/Quantum_Computing_Image.png',
      title: 'The Impact of Artificial Intelligence on Healthcare',
      subtitle: 'Exploring the transformative power of AI in the medical field',
      author: 'John Smith',
      date: 'May 23, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      comments: 25,
      likes: 5,
      visualizations: 50,
    ),
    Post(
      image:
          'https://www.astronomy.com/wp-content/uploads/sites/2/2023/03/shutterstock_1049625074.jpg',
      title: 'The Impact of Artificial Intelligence on Healthcare',
      subtitle: 'Exploring the transformative power of AI in the medical field',
      author: 'John Smith',
      date: 'May 23, 2023',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      comments: 45,
      likes: 15,
      visualizations: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Featured Posts',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 325,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredPosts.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 400,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.9,
                          child: AspectRatio(
                            aspectRatio: 2,
                            child: Image.network(
                              featuredPosts[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    featuredPosts[index].author,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    featuredPosts[index].date,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.comment,
                                    size: 20,
                                    color: Color.fromRGBO(224, 114, 5, 1),
                                  ),
                                  Text(
                                    featuredPosts[index].comments.toString(),
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Icon(
                                    Icons.favorite,
                                    size: 20,
                                    color: Color.fromRGBO(224, 114, 5, 1),
                                  ),
                                  Text(
                                    featuredPosts[index].likes.toString(),
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Icon(
                                    Icons.remove_red_eye,
                                    size: 20,
                                    color: Color.fromRGBO(224, 114, 5, 1),
                                  ),
                                  Text(
                                    featuredPosts[index]
                                        .visualizations
                                        .toString(),
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Text(featuredPosts[index].title),
                          subtitle: Text(featuredPosts[index].subtitle),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
