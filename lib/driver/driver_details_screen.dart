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
          body: SafeArea(
            child: Card(
              margin: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Center(
                      child: Text(
                        data.number,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          data.dateOfBirth,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 20,
                        ),
                        Text(data.nationality),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
