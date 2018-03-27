import 'package:flutter/material.dart';


class PhotoScroller extends StatelessWidget {
  PhotoScroller(this.photoUrls);

  final List<String> photoUrls;
 // final Color color;

  _onPhotoScrollImageClicked(BuildContext context) {
    //  Navigator.of(context).popUntil(ModalRoute.withName('/'));
    Navigator.of(context).push(
        new PageRouteBuilder(
            pageBuilder: (BuildContext context, _, __) {
             //return something
            },
            transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
              return new FadeTransition(
                  opacity: animation,
                  child: child
              );
            }
        )
    );
  }


  _flashButton() {
    return new Row(

      children: <Widget>[
        new Icon(Icons.flash_on,color: const Color(0xFFffbed3),),
        new Padding(padding: const EdgeInsets.only(left: 5.0),
        child: new Text('Interested',style: new TextStyle(color: const Color(0xFFe893c2),fontSize: 18.0,fontWeight: FontWeight.bold),),)
      ]
    );
  }

  _buildPhoto(BuildContext context, int index) {
    var photo = photoUrls[index];

    return  new Container(
      width: 180.0,
    //  padding: const EdgeInsets.only(right: 16.0),
      margin: const EdgeInsets.only(right: 16.0),
      decoration: new BoxDecoration(
        border: new Border.all(color:const Color(0xFFe893c2),width: 1.0 ),
       // color: const Color(0xFFffbed3),
      //  borderRadius: new BorderRadius.circular(5.0),
      ),
      child: new GestureDetector(
        onTap: ()=>_onPhotoScrollImageClicked(context),
        child:  new ClipRRect(
            borderRadius: new BorderRadius.circular(4.0),

            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Image.asset(
                  photo,
                  width: 180.0,
                  height: 140.0,
                  fit: BoxFit.cover,
                ),
                new Padding(padding: const EdgeInsets.only(left: 10.0,top: 5.0),child:
                new Text('Say this really fast',style: new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.blueGrey),
                ),
                ),
                new Container(padding: const EdgeInsets.only(left: 10.0,top: 5.0),child:
                new Text('She sells sea shells on the sea shore',style: new TextStyle(fontSize: 11.0,color: Colors.grey),
                  softWrap: true,
                ),
                ),
                new Padding(padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                  child: _flashButton(),)


              ],

            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Padding(
          padding: const EdgeInsets.only(top: 30.0,left: 30.0,bottom: 10.0),
          child: new Text("UPCOMING WORKSHOPS",style: new TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
        ),
        new SizedBox.fromSize(
        size: const Size.fromHeight(260.0),

          child: new ListView.builder(
            itemCount: photoUrls.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 8.0, left: 20.0),
            itemBuilder: _buildPhoto,
          ),
        ),
      ],
    );
  }
}