import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lets_play/pages/complete.dart';
import 'package:lets_play/pages/options.dart';
import 'package:html/parser.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool answernow = false;

  List responseData = [];
  int number = 0;
  late Timer _timer;
  int _secondRemaining = 20;

  List<String> shuffledOptions = [];
  String? selectedOption;

  int correctAnswers = 0;
  int incorrectAnswers = 0;

  Future api() async{
    final response = await http.get(Uri.parse('https://opentdb.com/api.php?amount=10'));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body)['results'];
      setState(() {
        responseData = data;
        updateShuffleOption();
      }
      );
    }
  }
  @override
  void initState() {
    super.initState();
    api();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: 380,
                width: 500,
                child: Stack(
                  children: [
                    Container(
                      height:300,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Color(0xff533b7c),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 20,
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/1.16,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 5,
                                spreadRadius: 3,
                                color: Color(0xff533b7c).withValues(
                                    alpha: 0.4),
                              )
                            ]
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text('10', style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text(
                                    (number + 1).toString(), style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ],
                              ),
                              Center(
                                child: Text('Question ${number + 1}/10',
                                  style: TextStyle(
                                    color: Color(0xff533b7c),
                                    fontSize: 15,
                                  ),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(responseData.isNotEmpty?parse(responseData[number]['question']).documentElement?.text??'':'',
                                style: TextStyle(fontSize: 18.0,),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 260,
                      left:MediaQuery.of(context).size.width/2.5,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: CircularProgressIndicator(
                          value: _secondRemaining / 20,
                          strokeWidth: 8,
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xffffffff)),
                                                ),
                        ),
                      Text(_secondRemaining.toString(), style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 30,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  answernow = true;
                  setState(() {

                  });
                },
                child: Column(
                  children: (responseData.isNotEmpty&& responseData[number]['incorrect_answers']!=null)?
                  shuffledOptions.map((option){
                    return Options(option : option.toString(),
                      selectedOption: selectedOption,
                      correctAnswer:
                      responseData[number]["correct_answer"],
                      onOptionSelected: (String option) {
                        setState(() {
                          selectedOption = option;
                          checkAnswer(option);
                        });
                      },
                    );
                  }).toList() :[],
                ),
              ),
              SizedBox(height: 10,),

              Padding(padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff533b7c),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    nextQuestion();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Next", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer(String selectedOption) {
    if (selectedOption == responseData[number]["correct_answer"]) {
      correctAnswers++;
    } else {
      incorrectAnswers++;
    }
  }

    void nextQuestion(){
      if(number == 9){
        completed();
      }
      setState(() {
        number=number+1;
        updateShuffleOption();
        _secondRemaining=20;
        selectedOption = null;
      });
  }


  void completed(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> Completed(
      correctAnswers: correctAnswers,
      incorrectAnswers: incorrectAnswers,
    )));
  }


  void updateShuffleOption(){
    setState((){
      shuffledOptions = shuffleOption(
        [
          responseData[number]["correct_answer"],
          ...(responseData[number]['incorrect_answers'] as List)
        ]
      );
    });
  }


  List<String> shuffleOption (List<String> option){
    List<String> shuffledOptions = List.from(option);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }


  void startTimer(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        if(_secondRemaining>0){
          _secondRemaining--;
        }else{
          nextQuestion();
          _secondRemaining=20;
          updateShuffleOption();
        }
      });
    });
  }
}



