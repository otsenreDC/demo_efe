import 'dart:async';

import 'package:efe1/commons/bloc.dart';
import 'package:efe1/driver_standings/driver_standing.dart';

class DriverStandingsBloc implements Bloc {
  final _fooList = [
    DriverStanding("id", 1, "driver", "constructor"),
    DriverStanding("id", 2, "driver", "constructor"),
    DriverStanding("id", 3, "driver", "constructor"),
    DriverStanding("id", 4, "driver", "constructor"),
  ];

  final _controller = StreamController<List<DriverStanding>>();

  Stream<List<DriverStanding>> get stream => _controller.stream;

  DriverStandingsBloc() {
    Future.delayed(const Duration(seconds: 5), () => _fooList).then((value) {
      _controller.sink.add(value);
    });
  }

  @override
  void dispose() {
    _controller.close();
  }
}
