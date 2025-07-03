import 'package:heros/data/models/hero_model.dart';
import 'package:heros/domain/repositories/heros_repository.dart';
import 'package:mobx/mobx.dart';

part 'hero_view_model.g.dart';

class HeroViewModel = HeroViewModelBase with _$HeroViewModel;

abstract class HeroViewModelBase with Store {
  final HerosRepository _repository;

  HeroViewModelBase(this._repository);

  @observable
  HeroModel? hero;

  @action
  void clearHero() {
    hero = null;
  }

  @observable
  String? id;

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @action
  void setIdHero(value) {
    id = value;
  }

  @action
  Future<void> getHero() async {
    isLoading = true;
    errorMessage = null;

    try {
      final result = await _repository.getHeros(id);
      hero = result;
      if (hero?.response != null) {
        if (hero!.response!.contains('error')) {
          errorMessage = hero!.response;
        }
      }
    } catch (e) {
      errorMessage = 'Erro ao buscar herói: $e';

      hero = null;
    } finally {
      isLoading = false;
    }
  }
}
