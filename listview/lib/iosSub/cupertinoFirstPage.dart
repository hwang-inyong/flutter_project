import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../animalItem.dart';

class CupertinoFirstApp extends StatelessWidget {

  final List<Animal> adnimalList;
  const CupertinoFirstApp({Key? key, required this.adnimalList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("동물리스트"),
      ),
      child: ListView.builder(itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(5),
          height: 100,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    adnimalList[index].imagePath!
                    ,fit: BoxFit.contain
                    ,width: 80
                    ,height: 80,
                  )
                  ,Text(adnimalList[index].animalName!)
                ],
              )
              ,Container(
                height: 2,
                color: CupertinoColors.darkBackgroundGray,
              )
            ],
          ),
        );
      }
      ,itemCount: adnimalList.length,),
    );
  }
}