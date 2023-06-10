import 'output_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
      } else {
        maleCardColor = inactiveColor;
      }
      femaleCardColor = inactiveColor;
    } else if (gender == 2) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColor;
      } else {
        femaleCardColor = inactiveColor;
      }
      maleCardColor = inactiveColor;
    }
  }
  Color update(){
      if(base == inactiveColor){
        base = activeColor;

      }
      else{
        base = inactiveColor;
      }
      return base;
  }

  void weight(int g) {
    if (g == 0) {
      w++;
    } else if (g == 1 && w != 0) {
      w--;
    }
  }

  void height(int g) {
    if (g == 0) {
      a++;
    } else if (g == 1 && a != 0) {
      a--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(
            child: Text("BMI Calculator",style: TextStyle(color: Color(0xFF9298B0)),),
            alignment: Alignment.center,

          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    h: 50,
                    c: maleCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Male",
                          style: TextStyle(color: Color(0xFF9298B0)),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                      c: femaleCardColor,
                      h: 50,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Female",
                            style: TextStyle(color: Color(0xFF9298B0)),
                          )
                        ],
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableCard(
                  c: Color(0xFFEDEDED),
                  h: 500,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                          color: Color(0xFF9298B0),
                        ),
                      ),
                      Text(
                        "$sliderValue cm",
                        style: TextStyle(
                          color: Color(0xFF58627D),
                          fontSize: 30,
                        ),
                      ),
                      Transform.rotate(
                        angle:
                            -90 * 3.14 / 180, // rotate the slider -90 degrees
                        child: SliderTheme(
                          data: SliderThemeData(
                              activeTrackColor: activeColor,
                              thumbColor: Color(0xFFEDEDED),
                              overlayShape: RoundSliderOverlayShape(
                                overlayRadius: 1,
                              )),
                          child: Slider(
                            value: sliderValue.toDouble(),
                            min: 100.0,
                            max: 200.0,
                            inactiveColor: Colors.white,
                            onChanged: (double newValue) {
                              setState(() {
                                sliderValue = newValue.round();
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ReusableCard(
                        c: Color(0xFFEDEDED),
                        h: 240,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: Color(0xFF9298B0),
                              ),
                            ),
                            Text(
                              "$w",
                              style: TextStyle(
                                fontSize: 50,
                                color: Color(0xFF58627D),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(

                                  onPressed: () {
                                    setState(() {
                                      weight(0);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF58627D),
                                  ),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight(1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xFF58627D),
                                  ),
                                  mini: true,
                                )
                              ],
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20, // or width: 20 for horizontal space
                    ),
                    ReusableCard(
                        c: Color(0xFFEDEDED),
                        h: 240,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                color: Color(0xFF9298B0),
                              ),
                            ),
                            Text(
                              "$a",
                              style: TextStyle(
                                  fontSize: 50, color: Color(0xFF58627D)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      height(0);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF58627D),
                                  ),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      height(1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xFF58627D),
                                  ),
                                  mini: true,
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
            ElevatedButton(
                onPressed: (){

                  setState(() {
                    style: ElevatedButton.styleFrom(
                      backgroundColor: update()
                    );
                    bmi = (w/sliderValue/sliderValue)*10000;
                    ans = bmi.toStringAsFixed(2);
                    if(bmi<=18){
                      msg = "You are Underweight.";
                    }
                    else if(bmi>18 && bmi<25){
                      msg = "You have a Normal Bodyweight";
                    }
                    else if(bmi>25 && bmi<=30){
                      msg = "You are Obese.";
                    }
                    else{
                      msg = "You are Overweight.";
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)
                          {
                            return Result();
                          }
                      )
                    );

                  });
                }, 
                child: Text("Calculate" , style: TextStyle(color: Color(0xFF58627D)),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: inactiveColor
                ),
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, this.c, this.cardChild, required this.h});

  final Color? c;
  final Widget? cardChild;
  final double h;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: 150,
      child: cardChild,
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
