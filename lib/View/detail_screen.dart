import 'package:flutter/material.dart';
import 'package:tracker/View/world_states.dart';

class DetailScreen extends StatefulWidget {

  String name,image;
  int? totalCases,totalDeaths,totalRecovered,active,critical,todayRecovered,test;
  DetailScreen({Key? key,
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalRecovered,
    required this.totalDeaths,
    required this.active,
    required this.test,
    required this.todayRecovered,
    required this.critical,
  }): super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
         Stack(
           alignment: Alignment.topCenter,
           children: [
             Padding(
               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .067),
               child: Card(
                 child: Column(
                   children: [
                     SizedBox(height: MediaQuery.of(context).size.height * 0.06),

                     ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                     ReusableRow(title: 'Active', value: widget.active.toString()),
                     ReusableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                     ReusableRow(title: 'Deaths', value: widget.totalDeaths.toString()),
                     ReusableRow(title: 'Critical', value: widget.critical.toString()),
                     ReusableRow(title: 'Today Recovered', value: widget.totalRecovered.toString()),
                   ],
                 ),
               ),
             ),
             CircleAvatar(
               radius: 50,
               backgroundImage: NetworkImage(widget.image),

             )
           ],
         )
        ],
      ),
    );
  }
}
