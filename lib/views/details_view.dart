import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:knotionapp/widgets/widgets.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Instancia de la Api

    final String serie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-serie';

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(),
        SliverList(
            delegate: SliverChildListDelegate(
                [_PosterAndTitle(), _Overview(), EpisodesCards()])),
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: EdgeInsets.all(0),
          title: Container(
            width: double.infinity,
            color: Colors.black12,
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomCenter,
            child: Text(
              'movie.title',
              style: TextStyle(fontSize: 16),
            ),
          ),
          background: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://via.placeholder.com/500x300'),
              fit: BoxFit.cover)),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'movie.title',
            style: textTheme.headline5,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Text(
        'Est ea duis enim do consequat sint non anim excepteur labore occaecat sunt elit.',
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
