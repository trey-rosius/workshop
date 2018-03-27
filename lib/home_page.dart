import 'package:flutter/material.dart';
import 'package:workshop/header/diagonally_cut_gradient_header.dart';
import 'package:workshop/photo_scroller.dart';
import 'package:workshop/photo_card.dart';
import 'package:workshop/categories_page.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {



    var gradient = new LinearGradient(
        colors: [
          const Color(0xFFe893c2),
          const Color(0xFFffbed3)
          // Colors.blue.shade100.withOpacity(0.8),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
    );
    var blueGradient = new LinearGradient(
        colors: [
          const Color(0xFFa6cafc),
          const Color(0xFFbce2fc)
          // Colors.blue.shade100.withOpacity(0.8),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
    );

    var orangeGradient = new LinearGradient(
        colors: [
          const Color(0xFFf8c96b),
          const Color(0xFFfbb17b)
          // Colors.blue.shade100.withOpacity(0.8),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
    );

    var redGradient = new LinearGradient(
        colors: [
          const Color(0xFFf87791),
          const Color(0xFFfd8a8c)
          // Colors.blue.shade100.withOpacity(0.8),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
    );

    var diagonalBackground = new DiagonallyCutGradientHeader(gradient: gradient);

    var header = new Container(
        height: 60.0,

        margin: const EdgeInsets.only(top: 30.0,left: 10.0,right: 10.0,bottom: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: new BoxDecoration(
          border: new Border.all(color:const Color(0xFFe893c2),width: 1.0 ),
          color: const Color(0xFFffbed3),
          borderRadius: new BorderRadius.circular(5.0),
        ),
        child: new Row(
          children: <Widget>[
            new IconButton(icon: new Icon(Icons.menu,color: Colors.white,), onPressed:()=>_scaffoldKey.currentState.openDrawer()),

            new Expanded(child: new Padding(padding: const EdgeInsets.only(left: 10.0),
              child:new Text('What Are You Interested In ?', style: new TextStyle(color: Colors.white),),),),
            new Icon(Icons.search,color: Colors.white,),
          ],
        )
    );

    _recentWorkShop()
    {
      return new InkWell(
        onTap: ()=> _scaffoldKey.currentState.showSnackBar(new SnackBar(
            content: new Text("programming")
        )),
        child: new Row(
          children: <Widget>[

            new Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(20.0),
                decoration: new BoxDecoration(

                  //  color: const Color(0xFFffbed3),
                  gradient: gradient,
                  borderRadius: new BorderRadius.circular(100.0),

                ),
                child: new Center(
                  child:  new Text("PR",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),
                )
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("Data Science Learnathon",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 10.0),
                  child: new Text("Thursday, March 22, 5:30PM",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 10.0),
                  decoration: new BoxDecoration(
                    // border: new Border.all(color:const Color(0xFF8cb6ec),width: 1.0 ),
                    //   color: const Color(0xFFffbed3),
                    gradient: gradient,
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: new RaisedButton(onPressed: null,child: new Text('PROGRAMMING',style: new TextStyle(color: Colors.white),)),
                )
              ],
            )
          ],
        ),
      );
    }
    _recentWorkShop1()
    {
      return new InkWell(
        onTap:()=> _scaffoldKey.currentState.showSnackBar(new SnackBar(
            content: new Text("lifestyle")
        )),
        child:  new Row(
          children: <Widget>[

            new Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(20.0),
                decoration: new BoxDecoration(

                  gradient: blueGradient,
                  //  color: const Color(0xFFffbed3),
                  borderRadius: new BorderRadius.circular(100.0),

                ),
                child: new Center(
                  child:  new Text("LS",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),
                )
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("Data Science Learnathon",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 10.0),
                  child: new Text("Thursday, March 22, 5:30PM",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 10.0),
                  decoration: new BoxDecoration(
                    // border: new Border.all(color:const Color(0xFF8cb6ec),width: 1.0 ),
                    //  color: const Color(0xFFffbed3),
                    gradient: blueGradient,
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: new RaisedButton(onPressed: null,child: new Text('LIFESTYLE',style: new TextStyle(color: Colors.white),)),
                )
              ],
            )
          ],
        ),
      );
    }
    _recentWorkShop2()
    {
      return new InkWell(
        onTap: ()=>  _scaffoldKey.currentState.showSnackBar(new SnackBar(
            content: new Text("cooking")
        )),
        child:  new Row(
          children: <Widget>[

            new Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(20.0),
                decoration: new BoxDecoration(
                  gradient: redGradient,
                  //  color: const Color(0xFFffbed3),
                  borderRadius: new BorderRadius.circular(100.0),

                ),
                child: new Center(
                  child:  new Text("CK",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),
                )
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("Data Science Learnathon",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.grey.shade700),),
                new Padding(padding: const EdgeInsets.only(top: 10.0),
                  child: new Text("Thursday, March 22, 5:30PM",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 10.0),
                  decoration: new BoxDecoration(
                    // border: new Border.all(color:const Color(0xFF8cb6ec),width: 1.0 ),
                    // color: Colors.blue.opacity(0.9)
                    gradient: redGradient,
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: new RaisedButton(onPressed: null,child: new Text('COOKING',style: new TextStyle(color: Colors.white),)),
                )
              ],
            )
          ],
        ),
      );
    }

    return new Scaffold(
      key: _scaffoldKey,

      drawer: new Drawer(

          child: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  decoration: new BoxDecoration(gradient: gradient),
                  accountName: const Text('Ndimofor Ateh Rosius'),
                  accountEmail: const Text('treyrosius@gmail.com'),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: const AssetImage(
                        "images/rosius.jpg"
                    ),
                  ),

                ),

                new ListTile(
                  leading: new Icon(
                      Icons.home, color: Colors.greenAccent),
                  title: new Text('Home'),
                  onTap: () {
                    // change app state...
                    // close the drawer
                  },
                ),
                new Divider(),
                new ListTile(
                  leading: new Icon(Icons.inbox, color: Colors.blue),
                  title: new Text('Completed Jobs'),
                  onTap: () {
                    // change app state...
                    Navigator.pop(context); // close the drawer
                  },
                ),

                new Divider(),
                new ListTile(
                  leading: new Icon(Icons.drafts),
                  title: new Text('Pending Jobs'),
                  onTap: () {
                    // change app state...
                    Navigator.pop(context); // close the drawer
                  },
                ),

                new Divider(),
                new ListTile(
                  leading: new Icon(Icons.account_circle),
                  title: new Text('My Profile'),
                  onTap: () {
                    // change app state...
                    Navigator.pop(context); // close the drawer
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.help),
                  title: new Text('Help'),
                  onTap: () {
                    // change app state...
                    Navigator.pop(context); // close the drawer
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.help),
                  title: new Text('Contact Us'),
                  onTap: () {
                    // change app state...
                    Navigator.pop(context); // close the drawer
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.settings_power),
                  title: new Text('Sign Out'),
                  onTap: () {
                    // change app state...
                    Navigator.pop(context); // close the drawer
                  },
                ),
              ],
            ),
          )
      ),
      body: new SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: new Stack(
          children: <Widget>[
            diagonalBackground,
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header,
                new PhotoScroller(photoCards.photoUrls),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0,left:20.0,bottom: 10.0),
                  child: new Text("RECENT WORKSHOPS",style: new TextStyle(color: Colors.black54,fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                _recentWorkShop(),
                new Divider(),

                _recentWorkShop1(),
                new Divider(),
                _recentWorkShop2()
              ],
            ),


          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: ()=>
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (_) =>
                       new Categories()
                  )),
        backgroundColor: const Color(0xFFfd8a8c),child: new Icon(Icons.add_location),),

    );
  }
}
