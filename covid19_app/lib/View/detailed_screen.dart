import 'package:covid19_app/worldstats.dart';
import 'package:flutter/material.dart';

class DetaiedScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetaiedScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.totalCases,
      required this.totalDeaths,
      required this.totalRecovered,
      required this.active,
      required this.critical,
      required this.todayRecovered,
      required this.test});

  @override
  State<DetaiedScreen> createState() => _DetaiedScreenState();
}

class _DetaiedScreenState extends State<DetaiedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.067),
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    ReusableRow(
                        title: 'Total Cases',
                        value: widget.totalCases.toString()),
                    ReusableRow(
                        title: 'Total Deaths',
                        value: widget.totalDeaths.toString()),
                    ReusableRow(
                        title: 'Total Recovered',
                        value: widget.totalRecovered.toString()),
                    ReusableRow(
                        title: 'Active Cases', value: widget.active.toString()),
                    ReusableRow(
                        title: 'Critical Cases',
                        value: widget.critical.toString()),
                    ReusableRow(
                        title: 'Today Recovered',
                        value: widget.todayRecovered.toString()),
                  ],
                ),
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(widget.image),
            )
          ])
        ],
      ),
    );
  }
}
