import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/bubble_stories.dart';
import 'package:instagram_ui/widgets/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    "Cristiano",
    "leomessi",
    "Ruta",
    "leul",
    "dany",
    "meron"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(Icons.linked_camera_rounded),
                Text(
                  "Instagram",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ]),
        ),
        body: Column(
          children: [
            // STORIES
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                },
              ),
            ),
            // POSTS
            // UserPost(username: people[0]),
            Container(
              height: 575,
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(username: people[index]);
                },
              ),
            ),
          ],
        ));
  }
}
