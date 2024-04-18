import 'package:sports_app/domain/datasources/team_datasource.dart';
import 'package:sports_app/domain/entities/team.dart';
import 'package:sports_app/domain/repositories/team_repository.dart';

class TeamRepositoryImpl extends TeamRepository {
  final TeamDatasource datasource;

  TeamRepositoryImpl(this.datasource);

  @override
  Future<List<Team>> getAllTeams() {
    return datasource.getAllTeams();
  }

  @override
  Future<Team> getTeamById(int id) {
    return datasource.getTeamById(id);
  }

  @override
  Future<List<Team>> getTeamsByCountryId(int id) {
    return datasource.getTeamsByCountryId(id);
  }
}
