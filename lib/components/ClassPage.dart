import 'package:flutter/material.dart';

class ClassPage extends StatelessWidget {
  final String _strikingText = "This is a class comprised of techniques from multiple martial art styles that will teach fundamental principles of striking - being able to hit an opponent while avoiding being hit back. There will be a strong emphasis on basic foundational skills that will be great for anyone looking to improve their striking game, all the way from complete beginners to professional fighters. Since fighting is a very physically demanding task, there will be drills and exercises incorporated into the class to build not only fighting skills, but overall athletic ability. A great class for anyone looking to learn how to fight, get in shape, and have fun. 1 hour class. all levels";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Row (
                children: <Widget>[
                  StrikingImageAsset(),
                  Expanded(
                    child: Text(_strikingText),
                  )
                ],
              ),
            ],
          ),
        ),
    );
  }

  Widget _createCards() {
    return  Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/striking.png")

                    )
                ),
              ),
              Text("Striking Class"),
            ],
          ),
        ),
      );
  }
}

class StrikingImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/striking.png");
    //Image image = Image(image: assetImage);

    return new Container(
      width: 150,
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: assetImage,
            fit: BoxFit.fill
        ),
      ),
    );
  }

}