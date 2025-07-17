import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:heros/ui/home/hero_viewmodel.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HeroProfile extends StatefulWidget {
  HeroProfile({
    super.key,
    required this.heroViewModel,
  });
  HeroViewModel heroViewModel;
  @override
  State<HeroProfile> createState() => _HeroProfileState();
}

class _HeroProfileState extends State<HeroProfile> {
  @override
  void initState() {
    widget.heroViewModel.getHero();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HeroViewModel>();
    return Observer(builder: (_) {
      return PopScope(
        onPopInvokedWithResult: (didPop, result) {
          viewModel.clearHero();
        },
        child: Scaffold(
          appBar: AppBar(),
          body: Visibility(
            visible: viewModel.hero?.image?.url != null,
            replacement: Center(child: CircularProgressIndicator()),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Card(
                          child: Image.network(viewModel.hero?.image?.url ??
                              'https://hqrock.com.br/wp-content/uploads/2013/03/iron_man_movie.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      viewModel.hero?.name ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF8BC34A),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Disponível',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          viewModel.hero?.powerstats?.power ?? '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF0052),
                          ),
                        ),
                        Text(
                          viewModel.hero?.powerstats?.strength ?? '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF0052),
                          ),
                        ),
                        Text(
                          viewModel.hero?.powerstats?.combat ?? '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF0052),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Poder',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Força',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Combate',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      '${viewModel.hero?.work?.occupation}, ${viewModel.hero?.work?.base}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        maximumSize: WidgetStateProperty.all(Size(230, 50)),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.call,
                              color: Color(0xFFFF0052),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'CHAT NOW',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFFF0052),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        maximumSize: WidgetStateProperty.all(Size(230, 50)),
                        backgroundColor: WidgetStateProperty.all(
                          Color(0xFFFF0052),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'CALL NOW',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
