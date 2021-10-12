import 'package:efe1/driver_standings/driver_standing.dart';

class DriverStandingMapper {
  static List<DriverStanding> toDomainList(Map map) {
    final List dataList = map["MRData"]["StandingsTable"]["StandingsLists"];

    print(dataList);

    return [];
  }
}
