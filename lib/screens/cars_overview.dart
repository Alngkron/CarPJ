import 'package:carp/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/cars_grid.dart';

class CarsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('carp', style: SubHeading),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'เลือกยานพาหนะ',
              style: MainHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarsGrid(),
          )
        ],
      ),
    );
  }
}
