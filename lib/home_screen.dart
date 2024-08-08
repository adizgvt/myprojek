import 'package:aimsprojectmanagement/dashboard_page.dart';
import 'package:aimsprojectmanagement/my_tasks_page.dart';
import 'package:aimsprojectmanagement/project_info_page.dart';
import 'package:aimsprojectmanagement/sumary_page.dart';
import 'package:aimsprojectmanagement/task_info_page.dart';
import 'package:aimsprojectmanagement/widgets/drawer.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'const.dart';
import 'data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Image.asset(
          'assets/logo.png',
          height: 30,
        ),
        centerTitle: true,
        actions: const [
          // Icon(
          //   Icons.notifications_active
          //   , color: Colors.deepOrange,
          //   size: 35,
          // ),
          SizedBox(width: 20,),
        ],
      ),
      body: _currentIndex == 0 ? DashboardPage() : _currentIndex == 1 ? MyTasksPage() : SummaryPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          setState(() => _currentIndex = i);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Tugas saya'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info Ringkas'
          ),
        ],
      ),
    );
  }
}