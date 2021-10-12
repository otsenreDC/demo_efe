import 'package:efe1/driver_standings/driver_standing.dart';

class ApiClient {
  final String _host = "https://ergast.com/api/f1/2021/";

  Future<List<DriverStanding>> fetchDriverStandings() async {
    return Future.value([
      DriverStanding("id", 1, "driver", "constructor"),
      DriverStanding("id", 2, "driver", "constructor"),
      DriverStanding("id", 3, "driver", "constructor"),
      DriverStanding("id", 4, "driver", "constructor"),
    ]);
  }
}
