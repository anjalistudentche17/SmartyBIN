import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pages/camera_screen.dart';

//import 'package:mongo_dart/mongo_dart.dart';
//import 'package:dart_mongo/dart_mongo.dart' as dart_mongo;

void main() {
  runApp(GarbageApp());
}

class GarbageApp extends StatelessWidget {
  final String girlname ='assets/svg/girlresize.svg';
  @override
  Widget build(BuildContext context) {
    final String girlname ='assets/svg/Beautiful_Little_Girl_re.svg';
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent[100],
        body: Center(
          child: Container(
              height: 500,
               width: 400,
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   Align(
                   alignment: Alignment(0.0,-1.0),
                    child: Text('Help Anjali to complete her BTP',
                      style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 25), color: Colors.lime[900])
                ),
                ),
                  SvgPicture.asset(girlname),
                 // Image.asset('Beautiful_Little_Girl_7881.png'),
                  Container(
                    height: 200,
                    width: 300,
                    child: MyStatefulWidget(),
                  ),
              ],
                ),
          ),
        ),
          ),
        );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget> [
            Ink(
               decoration: const ShapeDecoration(
                   //color: Colors.lightBlue,
                    shape: CircleBorder(),
                   ),
               child: IconButton(icon: Icon(IconData(0xF4F7, fontFamily: 'AppIcons2'),color: Colors.lime[900],), onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => camerashoot()),);
                 },
               ),
            ),
            FlatButton(
                //color: Colors.blue,
                //textColor: Colors.white,
                disabledColor: Colors.grey,
                //disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.green,
                onPressed: () {
                    Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) => camerashoot()),);
                },
                child: Text('Shoot garbage',style: GoogleFonts.sriracha(textStyle: TextStyle(fontSize: 20), color: Colors.lime[900]))
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget> [
            Ink(
              decoration: const ShapeDecoration(
                //color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(icon: Icon(IconData(0xE800, fontFamily: 'AppIcons2'),color: Colors.lime[900],), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProjectIntroScreen()),);
              },
              ),
            ),
            FlatButton(
              //color: Colors.blue,
              //textColor: Colors.white,
                disabledColor: Colors.grey,
                //disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectIntroScreen()),);
                },
                child: Text('Why are you doing this?',style: GoogleFonts.sriracha(textStyle: TextStyle(fontSize: 20), color: Colors.lime[900]))
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget> [
            Ink(
              decoration: const ShapeDecoration(
                //color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(icon: Icon(IconData(0xF1F8, fontFamily: 'Contact'),color: Colors.lime[900],), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrashIntroScreen()),);
              },
              ),
            ),
            FlatButton(
              //color: Colors.blue,
              //textColor: Colors.white,
                disabledColor: Colors.grey,
                //disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrashIntroScreen()),);
                },
                child: Text('Know your Trash',style: GoogleFonts.sriracha(textStyle: TextStyle(fontSize: 20), color: Colors.lime[900]))
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget> [
            Ink(
              decoration: const ShapeDecoration(
                //color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(icon: Icon(IconData(0xF2D6, fontFamily: 'AppIcons2'),color: Colors.lime[900],), onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => IntroScreen()));
              },),
            ),
            FlatButton(
              //color: Colors.blue,
              //textColor: Colors.white,
                disabledColor: Colors.grey,
                //disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.green,
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => IntroScreen()));
                },
                child: Text('Want to know Anjali?',style: GoogleFonts.sriracha(textStyle: TextStyle(fontSize: 20), color: Colors.lime[900]))
            ),
          ],
        ),
      ],
    );
  }
}


class camerashoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black
    ));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,

      ),
      debugShowCheckedModeBanner: false,
      home:CameraScreen(),
    );
  }
}

/*class camerashoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Camera"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/

class IntroScreen extends StatefulWidget {
  const IntroScreen({ Key key }) : super(key: key);

  @override
  IntroScreenState createState() => IntroScreenState();
}
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "ANJALI",
        styleTitle:
        TextStyle(color: Color(0xffD02090), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "Ye indulgence unreserved connection alteration appearance",
        styleDescription:
        TextStyle(color: Color(0xffD02090), fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/Happy_girl_7905.png",
        colorBegin: Colors.limeAccent[400],
        colorEnd: Colors.brown,
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "EDUCATION",
        styleTitle:
        TextStyle(color: Color(0xffD02090), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "Ye indulgence unreserved connection alteration appearance",
        styleDescription:
        TextStyle(color: Color(0xffD02090), fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/Singing_little_girl_7867.png",
        colorBegin: Colors.yellowAccent,
        colorEnd: Colors.purple[300],
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "HOBBIES",
        styleTitle:
        TextStyle(color: Color(0xffD02090), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription:
        TextStyle(color: Color(0xffD02090), fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/Girl_on_a_swing_7928.png",
        colorBegin: Color(0xffFFA500),
        colorEnd: Color(0xff7FFFD4),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
    slides.add(
      new Slide(
        title: "CONTACT",
        styleTitle:
        TextStyle(color: Color(0xffD02090), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription:
        TextStyle(color: Color(0xffD02090), fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        pathImage: "assets/images/Enchanted_Girl_7927.png",
        colorBegin: Colors.greenAccent,
        colorEnd: Colors.amber,
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GarbageApp()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffD02090),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffD02090),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffD02090),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0x33D02090),
      colorActiveDot: Color(0xffD02090),
      sizeDot: 13.0,

      // Show or hide status bar
      shouldHideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,
    );
  }
}
class ProjectIntroScreen extends StatefulWidget {
  const ProjectIntroScreen({ Key key }) : super(key: key);

  @override
  ProjectIntroScreenState createState() => ProjectIntroScreenState();
}
class ProjectIntroScreenState extends State<ProjectIntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "RULER",
        description:
        "The generated waste can be divided into three major categories: Organic (all kinds of biodegradable waste), dry (or recyclable waste) and biomedical (or sanitary and hazardous waste).",
        pathImage: "assets/images/Trash/idea.png", //pathImage: "assets/images/Happy_girl_7905.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/Trash/process.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/Trash/rocket.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
    slides.add(
      new Slide(
        title: "RECYCLE REUSE REDUCE",
        description:
        "India generates 62 million tonnes of waste every year, of which less than 60% is collected and around 15% processed. With landfills ranking third in terms of greenhouse gas emissions in India, and increasing pressure from the public, the Government of India revised the Solid Waste Management after 16 years.. Are efforts to segregate waste can help India to be a clean and healthy nation. So let's Recycle.",
        pathImage: "assets/images/Trash/recycle.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );

    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/Trash/social-distancing.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
      // Do what you want
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GarbageApp()),
      );
    }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return new IntroSlider(
        slides: this.slides,
        onDonePress: this.onDonePress,
    );
  }
}

class TrashIntroScreen extends StatefulWidget {
  const TrashIntroScreen({ Key key }) : super(key: key);

  @override
  TrashIntroScreenState createState() => TrashIntroScreenState();
}
class TrashIntroScreenState extends State<TrashIntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
     slides.add(
      new Slide(
        title: "WASTE MANAGEMENT",
        description: "India faces major environmental challenges associated with waste generation and inadequate waste collection, transport, treatment and disposal. Current systems in India cannot cope with the volumes of waste generated by an increasing urban population, and this impacts on the environment and public health. The challenges and barriers are significant, but so are the opportunities.",
        pathImage: "assets/images/Trash/bin.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "41% of TOTAL WASTE ",
        description: "Organic waste is any material that is biodegradable and comes from either a plant or an animal. Biodegradable waste is organic material that can be broken into carbon dioxide, methane or simple organic molecules. Examples of organic waste include green waste, food waste, food-soiled paper, non-hazardous wood waste, green waste, and landscape and pruning waste.",
        pathImage: "assets/images/Trash/bin (1).png",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "8.3 BILLION TONNES",
        description:
        " Plastic waste, is the accumulation of plastic objects in the Earth’s environment that adversely affects wildlife, wildlife habitat, and humans. So much of what we consume is made of plastic such as plastic bottles and food containers. However, plastic is slow to degrade (taking over 400 years or more) due to its chemical structure, which presents a huge challenge. Reducing plastic consumption and raising awareness about plastic recycling is crucial if we are to overcome the problem of plastic waste and pollution on our planet.",
        pathImage: "assets/images/Trash/plastic.png",
        backgroundColor: Colors.cyanAccent[700],
      ),
    );
    slides.add(
      new Slide(
        title: "ONLY 30% IS RECYCLED",
        description:
        "Metals are valuable materials that can be recycled again and again without degrading their properties. Scrap metal has value, which motivates people to collect it for sale to recycling operations. The recycling of metals enables us to preserve natural resources while requiring less energy to process than the manufacture of new products using virgin raw materials. Recycling emits less carbon dioxide and other harmful gasses. More importantly, it saves money and allows manufacturing businesses to reduce their production cost.",
        pathImage: "assets/images/Trash/metal.png",
        backgroundColor: Colors.pink[700],
      ),
    );
    slides.add(
      new Slide(
        title: "5.2 M METRIC TONNES",
        description:
        "E-waste or electronic waste is created when an electronic product is discarded after the end of its useful life. The rapid expansion of technology and the consumption driven society results in the creation of a very large amount of e-waste in every minute. The sustainability of e-waste management systems has to be ensured by improving the collection and recycling systems.",
        pathImage: "assets/images/Trash/bin (2).png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
    slides.add(
      new Slide(
        title: "IT COMES FROM TREES",
        description:
        "In today’s electronic age, people are starting to consider going paperless. But there’s still a long way to go before we lose our dependence on it. From our newspapers to our paper wrappings, paper is still everywhere and most of them are ending up in our landfills creating a staggering amount of paper waste. To produce paper takes twice the energy used to produce a plastic bag. Recycling 1 ton of paper saves around 682.5 gallons of oil, 26,500 liters of water and 17 trees. Let's save trees, water and our environment just by recycling it.",
        pathImage: "assets/images/Trash/paper.png",
        backgroundColor: Colors.brown[600]
      ),
    );
    slides.add(
      new Slide(
        title: "CHEMICAL HAZARD",
        description:
        " Batteries contain a number of heavy metals and toxic chemicals and disposing of them by the same process as regular household waste has raised concerns over soil contamination and water pollution. Most types of batteries can be recycled. However, some batteries are recycled more readily than others, such as lead–acid automotive batteries (nearly 90% are recycled) and button cells. Rechargeable nickel–cadmium, nickel metal hydride, lithium-ion and nickel–zinc, can also be recycled. There is currently no cost-neutral recycling option available for disposable alkaline batteries.",
        pathImage: "assets/images/Trash/trash.png",
        backgroundColor: Colors.blueGrey,
      ),
    );
    slides.add(
      new Slide(
        title: "INFINITELY RECYCLABLE",
        description:
        "Glass is a transparent material formed by melting a mixture of materials such as silica, soda ash, and CaCO3. It is produced in forms like, packing or container glass, flat glass, bulb glass and cathode ray tube glass. Most colorless waste glasses are recycled effectively. Colored waste glasses with low recycling rate are generally dumped into landfills. With the shortage of landfill sites, it is becoming more and more difficult. Since the glass is not biodegradable, landfills do not provide an environment-friendly solution. Therefore, there is strong need to utilize waste glasses.",
        pathImage: "assets/images/Trash/glass.png",
        backgroundColor: Colors.tealAccent[700],
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GarbageApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}