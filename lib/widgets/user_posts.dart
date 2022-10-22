import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String username;
  const UserPost({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              // profile phot
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[400], shape: BoxShape.circle),
              ),
              SizedBox(
                width: 10,
              ),
              // username
              Text(
                username,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
