import 'package:efe1/driver_standings/driver_standing_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'driver_standing.dart';

class DriverStandings extends StatelessWidget {
  final _fooList = [
    DriverStanding("id", 1, "driver", "constructor"),
    DriverStanding("id", 2, "driver", "constructor"),
    DriverStanding("id", 3, "driver", "constructor"),
    DriverStanding("id", 4, "driver", "constructor"),
  ];

  DriverStandings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _fooList.length,
          itemBuilder: (context, index) {
            return DriverStandingItem(_fooList[index]);
          }),
    );
  }
}
