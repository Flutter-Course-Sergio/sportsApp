import '../domain.dart';

abstract class TeamDatasource {
  Future<List<Team>> getAllTeams();

  Future<Team> getTeamById(int id);

  Future<List<Team>> getTeamsByCountryId(int id);
}
