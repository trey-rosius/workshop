import 'package:flutter/material.dart';
import 'package:workshop/categoriesList.dart' as categoriesList;

class Categories extends StatelessWidget {

  var backgroundGradient = new LinearGradient(
    colors: [
      const Color(0xFFe893c2),
      const Color(0xFFffbed3),

    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
       elevation: 0.0,
        backgroundColor:  const Color(0xFFe893c2),

        leading: new InkWell(child: new Icon(Icons.arrow_back,color: Colors.white,),onTap:()=> Navigator.of(context).pop(),),
        title: new Center(child: new Text('Choose Category',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),),

      ),
      body:
       new Container(
         decoration: new BoxDecoration(gradient: backgroundGradient),
         child:   categoriesList.list == null
             ? const Center(child: const CircularProgressIndicator())
             : new GridView.builder(
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3, mainAxisSpacing: 25.0),
           padding: const EdgeInsets.all(10.0),
           itemCount: categoriesList.list.length,

           itemBuilder: (BuildContext context, int index) {
             return new GridTile(
               footer: new Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     new Flexible(
                       child: new SizedBox(
                         height: 16.0,
                         width: 100.0,
                         child: new Text(
                           categoriesList.list[index]["name"],
                           maxLines: 2,
                           textAlign: TextAlign.center,
                           overflow: TextOverflow.ellipsis,
                           style: new TextStyle(color: Colors.white),
                         ),
                       ),
                     )
                   ]),
               child: new Container(
                 height: 500.0,
                 child: new GestureDetector(
                   child: new Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       new SizedBox(
                         height: 100.0,
                         width: 100.0,
                         child: new Row(
                           children: <Widget>[
                             new Stack(
                               children: <Widget>[
                                 new SizedBox(
                                   child: new Container(
                                     child: new CircleAvatar(
                                       backgroundColor: Colors.white,
                                       radius: 40.0,
                                       child: new Icon(
                                           categoriesList.list[index]
                                           ["icon"],
                                           size: 40.0,
                                           color: categoriesList.list[index]
                                           ["color"]),
                                     ),
                                     padding: const EdgeInsets.only(
                                         left: 10.0, right: 10.0),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),

                 ),
               ),
             );
           },
         ),

       )

    );
  }
}
