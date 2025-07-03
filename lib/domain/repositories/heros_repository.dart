import 'package:heros/data/models/hero_model.dart';

abstract class HerosRepository {
  Future<HeroModel> getHeros(String? id);
}
