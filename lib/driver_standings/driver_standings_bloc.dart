import 'dart:async';

import 'package:efe1/commons/bloc.dart';
import 'package:efe1/driver_standings/driver_standing.dart';

class DriverStandingsBloc implements Bloc {

  final _controller = StreamController<List<DriverStanding>>();

  Stream<List<DriverStanding>> get driverStandingsStream =>
      _controller.stream;

  @override
  void dispose() {
    _controller.close();
  }

}