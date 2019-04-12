import 'package:flutter/material.dart';

class ClassPage extends StatelessWidget {
  final String _strikingText = "This is a class comprised of techniques from multiple martial art styles that will teach fundamental principles of striking - being able to hit an opponent while avoiding being hit back. There will be a strong emphasis on basic foundational skills that will be great for anyone looking to improve their striking game, all the way from complete beginners to professional fighters. Since fighting is a very physically demanding task, there will be drills and exercises incorporated into the class to build not only fighting skills, but overall athletic ability. A great class for anyone looking to learn how to fight, get in shape, and have fun. 1 hour class. all levels";
  final String _grapplingText = "This class teaches basic techniques from wrestling and jiu jitsu designed to control, subdue, and escape from an attacker. With striking and self defense in mind, there will be a focus on practical application of these techniques in a real life situation rather than focusing on the sport application. This class will help build overall body awareness, strength, and flexibility, while building foundational skills that will help you if a physical confrontation should ever occur. It will be challenging both physically and mentally but very rewarding.   1 hour class. All levels";
  final String _mmaText = "Putting it all together. Striking and grappling techniques combined to create the most real and effective way of fighting. This class will build on the foundational techniques learned in the grappling and striking classes and then blend them together. this class will test your abilities and help you find the fighting style that works best for you.   Equipment required- Groin protector. MMA gloves. mouth guard. good hygiene.  1 Hour class. Experience preferred(ask instructor)";






  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        children: <Widget>[
          _buildStrikingClass(),
          _buildGrapplingClass(),
          _buildMmaClass()
        ],
      )
    );
  }
  Widget _buildMmaClass() {
    return Container(
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: "MMA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.black,
                  )
              ),
            ),
            Image(image: AssetImage("assets/mma.png")),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: RichText(
                text:TextSpan(
                  text: _mmaText,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ),
            ),
          ],
        )
    );
  }


  Widget _buildGrapplingClass() {
    return Container(
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: "Grappling",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.black,
                  )
              ),
            ),
            Image(image: AssetImage("assets/grappling.png")),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: RichText(
                text:TextSpan(
                  text: _grapplingText,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ),
            ),
          ],
        )
    );
  }

  Widget _buildStrikingClass() {
    return Container(
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: "Striking",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.black,
              )
            ),
          ),
          Image(image: AssetImage("assets/striking.png")),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: RichText(
                text:TextSpan(
                  text: _strikingText,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                ),
            ),
          ),
        ],
      )
    );
  }

}

class StrikingImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/striking.png");
    //Image image = Image(image: assetImage);

    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: assetImage,
            //fit: BoxFit.fill
        ),
      ),
    );
  }

}