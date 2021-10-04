import 'package:flutter/material.dart';
import 'package:knotionapp/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Series de TV'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Tarjetas principales
            CardSwiper(),
            //Slider de peliculas
            SerieSlider()
          ],
        ),
      ),
    );
  }
}
