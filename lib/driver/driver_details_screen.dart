import 'package:efe1/commons/bloc_provider.dart';
import 'package:efe1/driver/driver_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DriverDetails extends StatelessWidget {
  const DriverDetails(String driverId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = DriverDetailsBloc();

    return BlocProvider<DriverDetailsBloc>(
      bloc: bloc,
      child: _streamBuilder(bloc),
    );
  }

  Widget _streamBuilder(DriverDetailsBloc bloc) {
    return StreamBuilder(
      stream: bloc.stream,
      builder: (context, snaphost) {
        return const Scaffold(
          body: Center(
            child: Text("Driver"),
          ),
        );
      },
    );
  }
}
