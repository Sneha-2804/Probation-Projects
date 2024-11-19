import 'package:flutter/material.dart';


class Options extends StatelessWidget {
  final String option;
  final String? selectedOption;
  final String correctAnswer;
  final Function(String) onOptionSelected;

  const Options({
    super.key,
    required this.option,
    required this.selectedOption,
    required this.correctAnswer,
    required this.onOptionSelected,
  });


  @override
  Widget build(BuildContext context) {
    bool isSelected = option == selectedOption;
    bool isCorrect = option == correctAnswer;
    bool isIncorrect = isSelected && !isCorrect;
    return Column(
      children: [
        GestureDetector(
          onTap: () => onOptionSelected(option),
          child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3 ,
              color: isSelected
              ? (isCorrect ? Colors.green : Colors.red)
                  : Color(0xff533b7c),
            ),
    ),
            child: Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(option, style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                  Radio(value: option, groupValue: selectedOption, onChanged: (val){
                    onOptionSelected(val!);
                  },
                  ),
                ],
              ),),
            ),
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}

