import 'dart:async';

import 'package:efe1/commons/bloc.dart';
import 'package:efe1/data/network/api_client.dart';
import 'package:efe1/driver_standings/driver_standing.dart';

class DriverStandingsBloc implements Bloc {
  final _client = ApiClient();

  final _controller = StreamController<List<DriverStanding>>();

  Stream<List<DriverStanding>> get stream => _controller.stream;

  DriverStandingsBloc() {
    _client.fetchDriverStandings().then((value) => _controller.sink.add(value));
  }

  @override
  void dispose() {
    _controller.close();
  }
}
