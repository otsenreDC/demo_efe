import 'package:efe1/commons/bloc_provider.dart';
import 'package:efe1/commons/functions.dart';
import 'package:efe1/driver/driver_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'driver.dart';

class DriverDetails extends StatelessWidget {
  String driverId;

  DriverDetails(this.driverId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = DriverDetailsBloc();
    bloc.loadDriver(driverId);

    return BlocProvider<DriverDetailsBloc>(
      bloc: bloc,
      child: Scaffold(
        body: _streamBuilder(bloc),
      ),
    );
  }

  Widget _streamBuilder(DriverDetailsBloc bloc) {
    return StreamBuilder(
      stream: bloc.stream,
      builder: (context, snapshot) {
        final data = cast<Driver>(snapshot.data);

        if (data == null) {
          return const Center(
            child: Text("Cargando"),
          );
        }

        return Scaffold(
          body: Center(
            child: Text(data.name),
          ),
        );
      },
    );
  }
}
