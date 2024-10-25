import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                color: Color(0xFF1D4ED8),
              ),
              Positioned(
                top: 60,
                left: 20,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hello User',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ),
                         ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => SearchFoodScreen(),
                                  //   ));
                                },
                                child: Icon(Icons.notifications, color: Colors.white, size: 30),
                              ),
                              SizedBox(width: 10),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                           'Today Is Thursday, March 23',
                             style: GoogleFonts.montserrat(
                             textStyle: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.w600))),
                      ],
                    ),
                    SizedBox(height: 20), // Add space before the ListView
                    SizedBox(
                      height: 200, // Set a specific height for the ListView
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TaskCard(
                            title: 'Karaoke Mobile App',
                            priority: 'High Priority',
                            progress: 0.5,
                            dueDate: 'April 20, 2023',
                            time: '10:00 AM',
                            priorityColor: Colors.redAccent,
                          ),
                          SizedBox(width: 16), // Adjust width for spacing
                          TaskCard(
                            title: 'Fonto Desktop App',
                            priority: 'Medium Priority',
                            progress: 0.75,
                            dueDate: 'March 25, 2023',
                            time: '2:00 PM',
                            priorityColor: Colors.orangeAccent,
                          ),
                        ],
                      ),
                    )
                    
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}









// Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 30), // Space for status bar
//             Text(
//               'Hello Stephen',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Today Is Thursday, March 23',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//             SizedBox(height: 30),
//             Expanded(
//               child: ListView(
//                 children: [
//                   TaskCard(
//                     title: 'Karaoke Mobile App',
//                     priority: 'High Priority',
//                     progress: 0.5,
//                     dueDate: 'April 20, 2023',
//                     time: '10:00 AM',
//                     priorityColor: Colors.redAccent,
//                   ),
//                   SizedBox(height: 16),
//                   TaskCard(
//                     title: 'Fonto Desktop App',
//                     priority: 'Medium Priority',
//                     progress: 0.75,
//                     dueDate: 'March 25, 2023',
//                     time: '2:00 PM',
//                     priorityColor: Colors.orangeAccent,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 FooterButton(label: 'All Task', isSelected: true),
//                 FooterButton(label: 'On Going', isSelected: false),
//                 FooterButton(label: 'Complete', isSelected: false),
//                 FooterButton(label: 'Postponed', isSelected: false),
//               ],
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),

class TaskCard extends StatelessWidget {
  final String title;
  final String priority;
  final double progress;
  final String dueDate;
  final String time;
  final Color priorityColor;

  TaskCard({
    required this.title,
    required this.priority,
    required this.progress,
    required this.dueDate,
    required this.time,
    required this.priorityColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: priorityColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                priority,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Create an application UI design for Karaoke...',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade300,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dueDate),
                Text(time),
              ],
            ),
          ],
        ),
      ),
    )
    );
  }
}

// class FooterButton extends StatelessWidget {
//   final String label;
//   final bool isSelected;

//   FooterButton({required this.label, required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             color: isSelected ? Colors.white : Colors.white70,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 4),
//         if (isSelected)
//           Container(
//             height: 4,
//             width: 60,
//             color: Colors.white,
//           )
//       ],
//     );
//   }
// }
