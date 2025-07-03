import 'package:dio/dio.dart';
import 'package:heros/core/services/secure_storage.dart';
import 'package:heros/data/models/hero_model.dart';
import 'package:heros/domain/repositories/heros_repository.dart';

class HerosRepositoryImpl implements HerosRepository {
  final Dio dioClient;

  HerosRepositoryImpl(this.dioClient);

  @override
  Future<HeroModel> getHeros(String? id) async {
    try {
      final response = await dioClient.get('/${SecureStorage.token}/$id');
      return HeroModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Erro ao buscar herói: ${e.message}');
    }
  }
}
