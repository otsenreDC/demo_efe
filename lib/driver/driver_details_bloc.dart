import 'dart:async';

import 'package:efe1/commons/bloc.dart';
import 'package:efe1/data/network/api_client.dart';

import 'driver.dart';

class DriverDetailsBloc implements Bloc {
  final _client = ApiClient();

  final _controller = StreamController<Driver>();

  Stream<Driver> get stream => _controller.stream;

  void loadDriver(String driverId) {
    _client.fetchDriver(driverId).then(
          (driver) => _controller.sink.add(driver),
        );
  }

  @override
  void dispose() {
    _controller.close();
  }
}
