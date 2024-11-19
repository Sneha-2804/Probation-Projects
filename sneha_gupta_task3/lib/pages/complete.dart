import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lets_play/pages/homepage.dart';

class Completed extends StatelessWidget {
  final int correctAnswers;
  final int incorrectAnswers;

  const Completed({
    super.key,
    required this.correctAnswers,
    required this.incorrectAnswers,
  });

  @override
  Widget build(BuildContext context) {
    int totalQuestions = 10;
    int totalCorrect = correctAnswers;
    int totalIncorrect = incorrectAnswers;
    double percentage = (totalCorrect / totalQuestions) * 100;
    return WillPopScope(
      onWillPop: () async {
        // Close the app when the back button is pressed
        SystemNavigator.pop(); // Or you can use Navigator.pop(context) if you want to go back
        return Future.value(false); // Return false to prevent the default back action
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 521,
                width: 500,
                child: Stack(
                  children: [
                    Container(
                      height: 340,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Color(0xff533b7c),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 85,
                          backgroundColor: Colors.white.withValues(alpha: .3),
                          child: CircleAvatar(
                            radius: 75,
                            backgroundColor: Colors.white.withValues(alpha: .4),
                            child: Center(
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Your Score" , style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0xff533b7c),
                                    ),),
                                    RichText(text: TextSpan(
                                      text: "$percentage", style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold,color: Color(0xff533b7c),
                                    ),
                                      children: [TextSpan(
                                        text: " pt", style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xff533b7c),
                                      ),
                                      ),
                                      ]
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                        left: 22,
                        child: Container(
                      height: 190,
                      width: MediaQuery.of(context).size.width/1.12,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 3,
                              color: Color(0xff533b7c).withValues(alpha: 0.7),
                              offset: Offset(0, 1),
                            ),
                          ]
                          ),
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Row(
                                              children: [
                                                Container(
                                                height: 15,
                                                  width: 15,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xff533b7c),
                                                  ),
                                              ),
                                                Text("$percentage%" ,style: TextStyle(
                                                  fontSize: 25,fontWeight: FontWeight.w500,color: Color(0xff533b7c),
                                                ),)
                                              ],
                                            ),
                                          ),
                                          Text("Complete"),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 15,
                                                  width: 15,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xff533b7c),
                                                  ),
                                                ),
                                                Text("$totalQuestions" ,style: TextStyle(
                                                  fontSize: 25,fontWeight: FontWeight.w500,color: Color(0xff533b7c),
                                                ),)
                                              ],
                                            ),
                                          ),
                                          Text("Total Questions"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 15,
                                                  width: 15,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                Text("$totalCorrect" ,style: TextStyle(
                                                  fontSize: 25,fontWeight: FontWeight.w500,color: Colors.green,
                                                ),)
                                              ],
                                            ),
                                          ),
                                          Text("Correct"),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 58.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                  Text("$totalIncorrect" ,style: TextStyle(
                                                    fontSize: 25,fontWeight: FontWeight.w500,color: Colors.red,
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Text("Incorrect"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                    ))
                  ],
                ),
              ),
              Center(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 18,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff533b7c),
                                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
      
                                ),
                                elevation: 5,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Homepage()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Play Again", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
