import 'package:flutter/material.dart';

class MainPageNotifier extends ChangeNotifier {
  var totalRnningtime = 0;
  var totalJoggingtime = 0;
  var totalExercisetime = 0;

  var totalRunningExceciseJoggingtime = 0;
  var totalRunningExceciseJoggingtimeson = 0;
  var totalRunningExceciseJoggingtimemon = 0;
  var totalRunningExceciseJoggingtimetue = 0;
  var totalRunningExceciseJoggingtimewed = 0;
  var totalRunningExceciseJoggingtimethu = 0;
  var totalRunningExceciseJoggingtimefri = 0;
  var totalRunningExceciseJoggingtimesat = 0;

  var totalRunningbyTotaltime = 0;
  var totalRunningbyTotaltimeson = 0;
  var totalRunningbyTotaltimemon = 0;
  var totalRunningbyTotaltimetue = 0;
  var totalRunningbyTotaltimewed = 0;
  var totalRunningbyTotaltimethu = 0;
  var totalRunningbyTotaltimefri = 0;
  var totalRunningbyTotaltimesat = 0;

  var totalJoggingbyTotaltime = 0;
  var totalJoggingbyTotaltimesun = 0;
  var totalJoggingbyTotaltimemon = 0;
  var totalJoggingbyTotaltimetue = 0;
  var totalJoggingbyTotaltimewed = 0;
  var totalJoggingbyTotaltimethu = 0;
  var totalJoggingbyTotaltimefri = 0;
  var totalJoggingbyTotaltimesat = 0;

  var totalExercisebytime = 0;
  var totalExercisebytimesun = 0;
  var totalExercisebytimemon = 0;
  var totalExercisebytimetue = 0;
  var totalExercisebytimewed = 0;
  var totalExercisebytimethu = 0;
  var totalExercisebytimefri = 0;
  var totalExercisebytimesat = 0;

  final TextEditingController sunController = TextEditingController();
  final TextEditingController monController = TextEditingController();
  final TextEditingController tueController = TextEditingController();
  final TextEditingController wedController = TextEditingController();
  final TextEditingController thuController = TextEditingController();
  final TextEditingController friController = TextEditingController();
  final TextEditingController satController = TextEditingController();

  final TextEditingController jogsunController = TextEditingController();
  final TextEditingController jogmonController = TextEditingController();
  final TextEditingController jogtueController = TextEditingController();
  final TextEditingController jogwedController = TextEditingController();
  final TextEditingController jogthuController = TextEditingController();
  final TextEditingController jogfriController = TextEditingController();
  final TextEditingController jogsatController = TextEditingController();

  final TextEditingController exesunController = TextEditingController();
  final TextEditingController exemonController = TextEditingController();
  final TextEditingController exetueController = TextEditingController();
  final TextEditingController exewedController = TextEditingController();
  final TextEditingController exethuController = TextEditingController();
  final TextEditingController exefriController = TextEditingController();
  final TextEditingController exesatController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    sunController.dispose();
    monController.dispose();
    tueController.dispose();
    wedController.dispose();
    thuController.dispose();
    friController.dispose();
    satController.dispose();

    jogsunController.dispose();
    jogmonController.dispose();
    jogtueController.dispose();
    jogwedController.dispose();
    jogthuController.dispose();
    jogfriController.dispose();
    jogsatController.dispose();

    exesunController.dispose();
    exemonController.dispose();
    exetueController.dispose();
    exewedController.dispose();
    exethuController.dispose();
    exefriController.dispose();
    exesatController.dispose();

    super.dispose();
  }

  var date1 = DateTime.now();
  var date2 = DateTime.now().add(const Duration(days: 1));
  var date3 = DateTime.now().add(const Duration(days: 2));
  var date4 = DateTime.now().add(const Duration(days: 3));
  var date5 = DateTime.now().add(const Duration(days: 4));
  var date6 = DateTime.now().add(const Duration(days: 5));
  var date7 = DateTime.now().add(const Duration(days: 6));

  Future addRunningTime() async {
    try {
      totalRnningtime = int.parse(sunController.text) +
          int.parse(monController.text) +
          int.parse(tueController.text) +
          int.parse(wedController.text) +
          int.parse(thuController.text) +
          int.parse(friController.text) +
          int.parse(satController.text);
    } catch (e) {
      return Future.error(e);
    }
    if(totalRnningtime != 0) {
      addtotalRunJogExeTime();
      addRunbyTotalTime();
      addJogbyTotalTime();
      addExebyTotalTime();
    }
    notifyListeners();
  }

  Future addJoggingTime() async {
    try {
      totalJoggingtime = int.parse(jogsunController.text) +
          int.parse(jogmonController.text) +
          int.parse(jogtueController.text) +
          int.parse(jogwedController.text) +
          int.parse(jogthuController.text) +
          int.parse(jogfriController.text) +
          int.parse(jogsatController.text);
    } catch (e) {
      return Future.error(e);
    }
    if(totalJoggingtime != 0) {
      addtotalRunJogExeTime();
      addRunbyTotalTime();
      addJogbyTotalTime();
      addExebyTotalTime();
    }
    notifyListeners();
  }

  Future addExerciseTime() async {
    try {
      totalExercisetime = int.parse(exesunController.text) +
          int.parse(exemonController.text) +
          int.parse(exetueController.text) +
          int.parse(exewedController.text) +
          int.parse(exethuController.text) +
          int.parse(exefriController.text) +
          int.parse(exesatController.text);
    } catch (e) {
      return Future.error(e);
    }
    if(totalExercisetime != 0) {
      addtotalRunJogExeTime();
      addRunbyTotalTime();
      addJogbyTotalTime();
      addExebyTotalTime();
    }
    notifyListeners();
  }

  Future addtotalRunJogExeTime() async {
    try {
      totalRunningExceciseJoggingtime = totalExercisetime + totalJoggingtime + totalRnningtime;
      totalRunningExceciseJoggingtimeson = int.parse(sunController.text) + int.parse(jogsunController.text) + int.parse(exesunController.text);
      totalRunningExceciseJoggingtimemon = int.parse(monController.text) + int.parse(jogmonController.text) + int.parse(exemonController.text);
      totalRunningExceciseJoggingtimetue = int.parse(tueController.text) + int.parse(jogtueController.text) + int.parse(exetueController.text);
      totalRunningExceciseJoggingtimewed = int.parse(wedController.text) + int.parse(jogwedController.text) + int.parse(exewedController.text);
      totalRunningExceciseJoggingtimethu = int.parse(thuController.text) + int.parse(jogthuController.text) + int.parse(exethuController.text);
      totalRunningExceciseJoggingtimefri = int.parse(friController.text) + int.parse(jogfriController.text) + int.parse(exefriController.text);
      totalRunningExceciseJoggingtimesat = int.parse(satController.text) + int.parse(jogsatController.text) + int.parse(exesatController.text);
    } catch (e) {
      return Future.error(e);
    }
    notifyListeners();
  }

  Future addRunbyTotalTime() async {
    try {
      totalRunningbyTotaltime = totalRunningExceciseJoggingtime ~/ totalRnningtime ;
      totalRunningbyTotaltimeson = totalRunningExceciseJoggingtimeson ~/ int.parse(sunController.text) ;
      totalRunningbyTotaltimemon = totalRunningExceciseJoggingtimemon ~/ int.parse(monController.text) ;
      totalRunningbyTotaltimetue = totalRunningExceciseJoggingtimetue ~/ int.parse(tueController.text) ;
      totalRunningbyTotaltimewed = totalRunningExceciseJoggingtimewed ~/ int.parse(wedController.text) ;
      totalRunningbyTotaltimethu = totalRunningExceciseJoggingtimethu ~/ int.parse(thuController.text) ;
      totalRunningbyTotaltimefri = totalRunningExceciseJoggingtimefri ~/ int.parse(friController.text) ;
      totalRunningbyTotaltimesat = totalRunningExceciseJoggingtimesat ~/ int.parse(satController.text) ;
    } catch (e) {
      return Future.error(e);
    }
    notifyListeners();
  }

  Future addJogbyTotalTime() async {
    try {
      totalJoggingbyTotaltime = totalRunningExceciseJoggingtime ~/ totalJoggingtime ;
      totalJoggingbyTotaltimesun = totalRunningExceciseJoggingtimeson ~/ int.parse(jogsunController.text) ;
      totalJoggingbyTotaltimemon = totalRunningExceciseJoggingtimemon ~/ int.parse(jogmonController.text) ;
      totalJoggingbyTotaltimetue = totalRunningExceciseJoggingtimetue ~/ int.parse(jogtueController.text) ;
      totalJoggingbyTotaltimewed = totalRunningExceciseJoggingtimewed ~/ int.parse(jogwedController.text) ;
      totalJoggingbyTotaltimethu = totalRunningExceciseJoggingtimethu ~/ int.parse(jogthuController.text) ;
      totalJoggingbyTotaltimefri = totalRunningExceciseJoggingtimefri ~/ int.parse(jogfriController.text) ;
      totalJoggingbyTotaltimesat = totalRunningExceciseJoggingtimesat ~/ int.parse(jogsatController.text) ;
    } catch (e) {
      return Future.error(e);
    }
    notifyListeners();
  }

  Future addExebyTotalTime() async {
    try {
      totalExercisebytime = totalRunningExceciseJoggingtime ~/ totalExercisetime ;
      totalExercisebytimesun = totalRunningExceciseJoggingtimeson ~/ int.parse(exesunController.text) ;
      totalExercisebytimemon = totalRunningExceciseJoggingtimemon ~/ int.parse(exemonController.text) ;
      totalExercisebytimetue = totalRunningExceciseJoggingtimetue ~/ int.parse(exetueController.text) ;
      totalExercisebytimewed = totalRunningExceciseJoggingtimewed ~/ int.parse(exewedController.text) ;
      totalExercisebytimethu = totalRunningExceciseJoggingtimethu ~/ int.parse(exethuController.text) ;
      totalExercisebytimefri = totalRunningExceciseJoggingtimefri ~/ int.parse(exefriController.text) ;
      totalExercisebytimesat = totalRunningExceciseJoggingtimesat ~/ int.parse(exesatController.text) ;
    } catch (e) {
      return Future.error(e);
    }
    notifyListeners();
  }
}
