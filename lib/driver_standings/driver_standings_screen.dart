import 'package:efe1/commons/bloc_provider.dart';
import 'package:efe1/commons/functions.dart';
import 'package:efe1/driver_standings/driver_standing_item.dart';
import 'package:efe1/driver_standings/driver_standings_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'driver_standing.dart';

class DriverStandings extends StatelessWidget {
  const DriverStandings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = DriverStandingsBloc();

    return BlocProvider<DriverStandingsBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Driver Standings"),
        ),
        body: _streamBuilder(bloc),
      ),
    );
  }

  Widget _streamBuilder(DriverStandingsBloc bloc) {
    return StreamBuilder(
      stream: bloc.stream,
      builder: (context, snapshot) {
        final data = cast<List<DriverStanding>>(snapshot.data);

        if (data == null) {
          return const Center(
            child: Text("Cargando"),
          );
        }

        if (data.isEmpty) {
          return const Center(
            child: Text("Sin resultados"),
          );
        }

        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return DriverStandingItem(data[index]);
          },
        );
      },
    );
  }
}
