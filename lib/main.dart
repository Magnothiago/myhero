import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:heros/core/services/dio_client.dart';
import 'package:heros/data/repositories/heros_repository_impl.dart';
import 'package:heros/ui/home/hero_profile.dart';
import 'package:heros/ui/home/hero_viewmodel.dart';
import 'package:heros/ui/home/list_hero.dart';
import 'package:provider/provider.dart';

import 'domain/repositories/heros_repository.dart';

void main() {
  final dioClient = DioClient();

  runApp(
    MultiProvider(
      providers: [
        Provider<Dio>.value(value: dioClient.dio),
        Provider<HerosRepository>(
          create: (context) => HerosRepositoryImpl(context.read<Dio>()),
        ),
        Provider<HeroViewModel>(
          create: (context) => HeroViewModel(context.read<HerosRepository>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heros',
      initialRoute: '/',
      routes: {
        '/': (context) =>
            ListHero(heroViewModel: context.read<HeroViewModel>()),
        '/profile': (context) =>
            HeroProfile(heroViewModel: context.read<HeroViewModel>()),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
