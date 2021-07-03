import 'package:flutter/material.dart';
import 'package:flutter_intro_slider_example/home.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      new Slide(
        title: "Improve your family's safety",
        description:
        "Ensure only verified & approved visitors enter your society",

      ),
    );
    slides.add(
      new Slide(
        title: "Pay your home bills easily",
        description: "Pay your society & home utility bills at 0% transaction charges",

      ),
    );
    slides.add(
      new Slide(
        title: "Stay connected with neighbours",
        description: "Know about crucial society announcements, participate in polls & community discussions",

      ),
    );
    slides.add(
      new Slide(
        title: "Resolve your complaints quickly ",
        description: "Easily raise complaints, get service requests resolved & receive real-time updates",

      ),
    );
    slides.add(
      new Slide(
        title: "Shop the best deals for your home",
        description: "Top brands! unbeatable prices! Get home service & essentials door-delivered",

      ),
    );
    
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                alignment: Alignment.bottomCenter,
                elevation: 10,
                RaisedButton(onPressed: (){
                },
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20)
                decoration: ShapeDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.orange]),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),        ),
                child: Text("GET STARTED",style: TextStyle(color: Colors.white)),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage,
                    matchTextDirection: true,
                    height: 60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title,
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    currentSlide.description,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.greenwhite,
      renderSkipBtn: Text("Skip"),
      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Colors.black),
      ),
      renderDoneBtn: Text(
        "Done",
        style: TextStyle(color: Colors.black),
      ),
      colorDoneBtn: Colors.black,
      colorActiveDot: Colors.black,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      shouldHideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      ),
    );
  }
}