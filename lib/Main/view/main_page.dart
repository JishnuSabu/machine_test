import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_project/Main/notifier/main_page.notifier.dart';
import 'package:new_project/widget/textFormWidget/text_form_widget.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mainPageNotifierData = Provider.of<MainPageNotifier>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? const Center(
              child: SizedBox(
                child: Center(
                  child: Text('Please rotate your phone'),
                ),
              ),
            )
          : Consumer<MainPageNotifier>(builder: (context, data, _) {
              return Container(
                margin: const EdgeInsets.all(20.0),
                child: SafeArea(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: const Text(
                                  'Total info for the week',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Total (Sun-Sat)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                    child: Text(
                                  'Sun',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Mon',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Tue',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Wed',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Thu',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Fri',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Sat',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(''),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(''),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date1),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date2),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date3),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date4),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date5),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date6),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(mainPageNotifierData.date7),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Running Time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                  '${mainPageNotifierData.totalRnningtime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.sunController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.monController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.tueController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.wedController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.thuController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.friController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.satController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '1',
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Jogging Time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingtime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogsunController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogmonController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogtueController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogwedController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogthuController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogfriController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.jogsatController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '2',
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Exercise time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisetime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exesunController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exemonController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exetueController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exewedController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exethuController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exefriController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                              TextFormWidget(
                                controller: mainPageNotifierData.exesatController,
                                mainPageNotifier: mainPageNotifierData,
                                item: '3',
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Total Time (Running+Jogging+Exercise)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimeson}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimemon}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimetue}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimewed}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimethu}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimefri}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningExceciseJoggingtimesat}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Running Time engagement % (Running / Total Time)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimeson}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimemon}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimetue}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimewed}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimethu}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimefri}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalRunningbyTotaltimesat}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Jogging Time engagement % (Running / Total Time)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimesun}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimemon}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimetue}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimewed}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimethu}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimefri}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalJoggingbyTotaltimesat}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Exercise Time engagement % (Exercise / Total Time)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytime}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimesun}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimemon}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimetue}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimewed}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimethu}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimefri}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    '${mainPageNotifierData.totalExercisebytimesat}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
    );
  }
}
