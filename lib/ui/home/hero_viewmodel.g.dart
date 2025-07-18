// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HeroViewModel on HeroViewModelBase, Store {
  late final _$heroAtom =
      Atom(name: 'HeroViewModelBase.hero', context: context);

  @override
  HeroModel? get hero {
    _$heroAtom.reportRead();
    return super.hero;
  }

  @override
  set hero(HeroModel? value) {
    _$heroAtom.reportWrite(value, super.hero, () {
      super.hero = value;
    });
  }

  late final _$idAtom = Atom(name: 'HeroViewModelBase.id', context: context);

  @override
  String? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HeroViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: 'HeroViewModelBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$heroNameAtom =
      Atom(name: 'HeroViewModelBase.heroName', context: context);

  @override
  String? get heroName {
    _$heroNameAtom.reportRead();
    return super.heroName;
  }

  @override
  set heroName(String? value) {
    _$heroNameAtom.reportWrite(value, super.heroName, () {
      super.heroName = value;
    });
  }

  late final _$getHeroAsyncAction =
      AsyncAction('HeroViewModelBase.getHero', context: context);

  @override
  Future<void> getHero() {
    return _$getHeroAsyncAction.run(() => super.getHero());
  }

  late final _$HeroViewModelBaseActionController =
      ActionController(name: 'HeroViewModelBase', context: context);

  @override
  void clearHero() {
    final _$actionInfo = _$HeroViewModelBaseActionController.startAction(
        name: 'HeroViewModelBase.clearHero');
    try {
      return super.clearHero();
    } finally {
      _$HeroViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setupName() {
    final _$actionInfo = _$HeroViewModelBaseActionController.startAction(
        name: 'HeroViewModelBase.setupName');
    try {
      return super.setupName();
    } finally {
      _$HeroViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdHero(dynamic value) {
    final _$actionInfo = _$HeroViewModelBaseActionController.startAction(
        name: 'HeroViewModelBase.setIdHero');
    try {
      return super.setIdHero(value);
    } finally {
      _$HeroViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hero: ${hero},
id: ${id},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
heroName: ${heroName}
    ''';
  }
}
