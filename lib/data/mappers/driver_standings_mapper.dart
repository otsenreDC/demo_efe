import 'package:efe1/driver_standings/driver_standing.dart';

class DriverStandingMapper {
  static List<DriverStanding> toDomainList(Map map) {
    final List dataList =
        map["MRData"]["StandingsTable"]["StandingsLists"][0]["DriverStandings"];

    final driverStandings = dataList.map((dto) => toDomain(dto));
    return driverStandings.toList(growable: false);
  }

  static DriverStanding toDomain(Map map) {
    final driver = map["Driver"];
    final constructor = map["Constructors"][0];

    return DriverStanding(
        driverId: driver["driverId"],
        position: map["position"],
        name: driver["givenName"],
        constructor: constructor["name"]);
  }
}
