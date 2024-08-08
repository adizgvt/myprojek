import 'package:flutter/material.dart';
import 'package:gantt_chart/gantt_chart.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:timetable_view/timetable_view.dart';
import 'dart:math' as math;

class ProjectTimelinePage extends StatefulWidget {
  const ProjectTimelinePage({super.key});

  @override
  State<ProjectTimelinePage> createState() => _ProjectTimelinePageState();
}

class _ProjectTimelinePageState extends State<ProjectTimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadual'),
      ),
      body: GanttChartView(
        maxDuration: const Duration(days: 30 * 2), //optional, set to null for infinite horizontal scroll
        startDate: DateTime(2022, 6, 7), //required
        dayWidth: 50, //column width for each day
        eventHeight: 100, //row height for events
        stickyAreaWidth: 200, //sticky area width
        showStickyArea: false, //show sticky area or not
        showDays: true, //show days or not
        startOfTheWeek: WeekDay.monday, //custom start of the week
        weekEnds: const {}, //custom weekends
        events: [
          //event relative to startDate
          GanttRelativeEvent(
            relativeToStart: const Duration(days: 0),
            duration: const Duration(days: 5),
            displayName: 'Do a very helpful task',
          ),
          //event with absolute start and end
          GanttAbsoluteEvent(
            startDate: DateTime(2022, 6, 10),
            endDate: DateTime(2022, 6, 16),
            displayName: 'Another task',
          ),
        ],
      ),
    );
  }
}
