import '../domain.dart';

abstract class TeamRepository {
  Future<List<Team>> getAllTeams();

  Future<Team> getTeamById(String id);

  Future<List<Team>> getTeamsByCountryId(String id);
}
