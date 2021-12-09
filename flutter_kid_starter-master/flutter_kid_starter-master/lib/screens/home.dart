import 'package:flutter/material.dart';
import 'package:kidstarter/screens/alphabets.dart';
import 'package:kidstarter/screens/colors.dart';
import 'package:kidstarter/screens/counting.dart';
import 'package:kidstarter/widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> _categories = [
    CategoryCard(
      title:'1234',
      primaryColor: Colors.greenAccent[100],
      secondaryColor: Colors.green,
      screen: CountingScreen(
        title: '1234',
        primaryColor: Colors.greenAccent[100],
        secondaryColor: Colors.green,
      ),
    ),
    CategoryCard(
      title: 'ABCD',
      primaryColor: Colors.orangeAccent[100],
      secondaryColor: Colors.orange,
      screen: AlphabetsScreen(
        title: 'ABCD',
        primaryColor: Colors.orangeAccent[100],
        secondaryColor: Colors.orange,
      ),
    ),
    CategoryCard(
      title: 'Colors',
      primaryColor: Colors.purpleAccent[100],
      secondaryColor: Colors.purple,
      screen: ColorsScreen(
        title: 'Colors',
        primaryColor: Colors.purpleAccent[100],
        secondaryColor: Colors.purple,
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          image: DecorationImage(
            image: NetworkImage('https://27mi124bz6zg1hqy6n192jkb-wpengine.netdna-ssl.com/wp-content/uploads/2020/05/Top-10-Indoor-Games-scaled.jpg'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 188.0,
              backgroundColor: Colors.grey[50],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/kidbgg.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(_categories),
            ),
          ],
        ),
      ),
    );
  }
}
