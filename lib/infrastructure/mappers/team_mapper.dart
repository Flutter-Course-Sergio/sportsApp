import 'package:sports_app/infrastructure/models/my_sportsmonk_team_response.dart';

import '../../domain/domain.dart';

class TeamMapper {
  static Team teamSportsmonkToEntity(MySportsmonkTeamResponse teamResponse) =>
      Team(
        id: teamResponse.id,
        name: teamResponse.name,
        code: teamResponse.shortCode,
        image: teamResponse.imagePath,
        founded: teamResponse.founded,
      );
}
