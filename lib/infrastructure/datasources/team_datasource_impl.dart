import 'package:dio/dio.dart';
import 'package:sports_app/config/config.dart';

import 'package:sports_app/domain/datasources/team_datasource.dart';
import 'package:sports_app/domain/entities/team.dart';
import 'package:sports_app/infrastructure/mappers/team_mapper.dart';
import 'package:sports_app/infrastructure/models/my_sportsmonk_team_response.dart';

class TeamDatasourceImpl extends TeamDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.sportmonks.com/football/v3',
      queryParameters: {'api_key': Environment.mySportsmonkKey}));

  @override
  Future<List<Team>> getAllTeams() {
    // TODO: implement getAllTeams
    throw UnimplementedError();
  }

  @override
  Future<Team> getTeamById(int id) async {
    final response = await dio.get('/teams/$id');

    if (response.statusCode != 200) {
      throw Exception('Team with id: $id not found');
    }

    final teamData = MySportsmonkTeamResponse.fromJson(response.data);
    final Team team = TeamMapper.teamSportsmonkToEntity(teamData);
    return team;
  }

  @override
  Future<List<Team>> getTeamsByCountryId(int id) {
    // TODO: implement getTeamsByCountryId
    throw UnimplementedError();
  }
}
