import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';
// import '../constants/colors.dart';
// import '../constants/skill_items.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 700,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education',
              style: TextStyle(
                color: CustomColor.yellowSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Ajay Kumar Garg Engineering College',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Soft Skill',
              style: TextStyle(
                color: CustomColor.yellowSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Teamwork', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Communication', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Critical Thinking', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Time Management', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Technical Skill',
              style: TextStyle(
                color: CustomColor.yellowSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            for (int i = 0; i < 2; i++)
              Row(
                children: [
                  Image.asset(
                    skillItems[i]["img"],
                    width: 26.0,
                  ),
                  SizedBox(width: 8),
                  Text(skillItems[i]["title"]),
                ],
              ),
            for (int i = 2; i < skillItems.length; i++)
              Row(
                children: [
                  Image.asset(
                    skillItems[i]["img"],
                    width: 26.0,
                  ),
                  SizedBox(width: 8),
                  Text(skillItems[i]["title"]),
                ],
              ),
            SizedBox(height: 30),
            Text(
              'Skill Set',
              style: TextStyle(
                color: CustomColor.yellowSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'App Dev', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Web Dev', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Android Dev', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Desktop Dev', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Interest',
              style: TextStyle(
                color: CustomColor.yellowSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Design Trends', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Technology', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Language',
              style: TextStyle(
                color: CustomColor.yellowSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'Hindi', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '•', // The bullet point
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28, // Slightly bigger size for the bullet
                          ),
                        ),
                        Text(
                          'English', // The actual text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // Regular size for the text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
