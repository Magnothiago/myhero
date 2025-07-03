import 'package:flutter/material.dart';
import 'package:heros/ui/home/hero_view_model.dart';
import 'package:mobx/mobx.dart';

class ListHero extends StatefulWidget {
  const ListHero({required this.heroViewModel, super.key});
  final HeroViewModel heroViewModel;

  @override
  State<ListHero> createState() => _ListHeroState();
}

class _ListHeroState extends State<ListHero> {
  late ReactionDisposer _errorReaction;

  @override
  void initState() {
    super.initState();

    _errorReaction = reaction<String?>(
      (_) => widget.heroViewModel.errorMessage,
      (message) {
        if (message != null) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Erro ao buscar hero'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false),
                  child: Text('OK'),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _errorReaction();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_sharp,
              size: 25,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Voltar',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: nomes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        nomes[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/icons/info.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          widget.heroViewModel.setIdHero('$index');
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('assets/icons/call.png'),
                        ),
                      ),
                    ],
                  ),
                  Divider()
                ],
              ),
            );
          }),
    );
  }

  final List<String> nomes = [
    'Ana',
    'Bruno',
    'Carla',
    'Daniel',
    'Eduarda',
    'Felipe',
    'Gabriela',
    'Henrique',
    'Isabela',
    'João',
    'Karla',
    'Lucas',
    'Mariana',
    'Nathan',
    'Olívia',
    'Paulo',
    'Queila',
    'Rafael',
    'Sofia',
    'Tiago',
    'Úrsula',
    'Vitor',
    'William',
    'Xênia',
    'Yasmin',
    'Zeca',
    'Alice',
    'Bernardo',
    'Camila',
    'Diego',
    'Elaine',
    'Fábio',
    'Gustavo',
    'Helena',
    'Igor',
    'Júlia',
    'Kevin',
    'Larissa',
    'Matheus',
    'Nicole',
  ];
}
