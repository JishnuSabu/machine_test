import 'package:flutter/material.dart';
import 'package:new_project/Main/notifier/main_page.notifier.dart';

class TextFormWidget extends StatelessWidget {
  final TextEditingController? controller;
  final MainPageNotifier? mainPageNotifier;
  final String? item;

  const TextFormWidget({
    Key? key,
    required this.controller,
    required this.mainPageNotifier,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      maxLines: 1,
      onChanged: (value) {
        if(item == '1') {
          mainPageNotifier?.addRunningTime();
        }else if(item == '2') {
          mainPageNotifier?.addJoggingTime();
        }else if(item == '3') {
          mainPageNotifier?.addExerciseTime();
        }else if(item == '4') {
          mainPageNotifier?.addtotalRunJogExeTime();
        }else if(item == '5') {
          mainPageNotifier?.addRunbyTotalTime();
        }else if(item == '6') {
          mainPageNotifier?.addJogbyTotalTime();
        }else if(item == '7') {
          mainPageNotifier?.addExebyTotalTime();
        }
      },
      style: const TextStyle(color: Colors.black, fontSize: 16),
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        isDense: true,
        border: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
        hintText: '',
        counterText: "",
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.all(12),
      ),
    );
  }
}
