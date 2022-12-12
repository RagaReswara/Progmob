import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:startup_namer/mahasiswa/mahasiswa_add.dart';

class Mahasiswa_get extends StatefulWidget {
  const Mahasiswa_get({Key? key}) : super(key: key);

  @override
  State<Mahasiswa_get> createState() => _Mahasiswa_getState();
}

class _Mahasiswa_getState extends State<Mahasiswa_get> {
  List _get = [];

  @override
  void initState(){
    super.initState();
    _getDataMhs();
  }

  Future _getDataMhs() async {
    try{
      final response = await http.get(Uri.parse(
        'http://kpsi.fti.ukdw.ac.id/api/progmob/mhs/72200364'
      ));
      if(response.statusCode == 200){
        final data =jsonDecode(response.body);

        setState(() {
          _get = data;
        });
      }
    }
    catch (e){
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD Mahasiswa"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Mahasiswa_add())
          );
        },
      ),

      body: ListView.builder(
          itemCount: _get.length,
          itemBuilder: (context,index){
            return Padding(padding: const EdgeInsets.all(10),
            child: ListTile(
            shape: RoundedRectangleBorder(
            side: BorderSide( color: Colors.green, width: 1),
            borderRadius: BorderRadius.circular(5),
            ),
            title: Text(_get[index]['nim'] + " - " + _get[index]['nama']),
            subtitle: Text(_get[index]['email']),
            ),
            );
          }
      ) ,
    );
  }
}
