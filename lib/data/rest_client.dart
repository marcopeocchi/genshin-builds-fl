import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shinobu/models/character_builds_model.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://genshin-impact-builds.herokuapp.com/builds')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/{elem}')
  Future<CharacterBuildsModel> getBuildByElement(@Path('elem') String element);
}
