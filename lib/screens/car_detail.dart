import 'package:carp/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/specific_card.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.bookmark,
                  size: 30, color: Theme.of(context).accentColor)),
          IconButton(onPressed: null, icon: Icon(Icons.share, size: 30)),
        ],
      ),
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(
            brand,
            style: BasicHeading,
          ),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: '12 เดือน',
                price: price * 12,
                name2: 'บาท',
              ),
              SpecificsCard(
                name: '6 เดือน',
                price: price * 6,
                name2: 'บาท',
              ),
              SpecificsCard(
                name: '1 เดือน',
                price: price * 1,
                name2: 'บาท',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'ข้อมูลจำเพาะ',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'color',
                name2: color,
                price: 1,
              ),
              SpecificsCard(
                name: 'gearbox',
                name2: gearbox,
                price: 1,
              ),
              SpecificsCard(
                name: 'fuel',
                name2: fuel,
                price: 1,
              )
            ],
          ),
          SizedBox(height: 10),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Theme.of(context).accentColor,
            onPressed: null,
            child: Text(
              'เช่าเลย',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
