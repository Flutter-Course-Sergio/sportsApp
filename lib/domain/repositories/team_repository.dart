import '../domain.dart';

abstract class TeamRepository {
  Future<List<Team>> getAllTeams();

  Future<Team> getTeamById(int id);

  Future<List<Team>> getTeamsByCountryId(int id);
}
