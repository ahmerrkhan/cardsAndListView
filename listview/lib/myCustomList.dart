import 'package:flutter/material.dart';



class myCustomList extends StatefulWidget {
  @override
  _myCustomListState createState() => _myCustomListState();
}

class _myCustomListState extends State<myCustomList> {
  List <String> _countryName = ['Ahmer','Moiz','Danish'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView.separated(
        itemCount: _countryName.length,
        itemBuilder: (context, index){
          return Card(
        elevation:15.0,
        child: ListTile(
          onTap: ()=>print('done 1'),
          title: Text(_countryName[index]),
          trailing: Icon(Icons.flight),
        ),
    );
        },
    separatorBuilder: (context, index){
          return Divider();
    },

    ),
    );
  }
}
