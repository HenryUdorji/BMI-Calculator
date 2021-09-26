import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/widgets/add_button.dart';
import 'package:bmi_calculator/widgets/minus_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              color: textColorPrimary,
              fontFamily: "Nunito"
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            //GENDER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: normalCardColor
                    ),
                    width: 180,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: textColorPrimary,
                          size: 80,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              color: textColorSecondary,
                              fontFamily: "Nunito",
                              fontSize: 20
                          ),
                        )
                      ],
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: accentColor
                    ),
                    width: 180,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: textColorPrimary,
                          size: 80,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              color: textColorSecondary,
                              fontFamily: "Nunito",
                              fontSize: 20
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
            SizedBox(height: 20),
            //SLIDER
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: normalCardColor
              ),
              width: double.infinity,
              height: 180,
              margin: EdgeInsets.only(
                  right: 20,
                  left: 20
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Nunito",
                        color: textColorSecondary
                    ),
                  ),
                  Text(
                    "50cm",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Nunito",
                        color: textColorPrimary
                    ),
                  ),
                  Slider(
                      min: 0,
                      max: 200,
                      activeColor: accentColor,
                      inactiveColor: textColorSecondary,
                      value: 50,
                      onChanged: (double newValue) {

                      }
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            //WEIGHT AND AGE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: normalCardColor
                  ),
                  width: 180,
                  height: 170,
                  padding: EdgeInsets.only(
                      top: 10, bottom: 10
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              color: textColorSecondary,
                              fontFamily: "Nunito",
                              fontSize: 20
                          ),
                        ),
                        Text(
                          "60",
                          style: TextStyle(
                              color: textColorPrimary,
                              fontFamily: "Nunito",
                              fontSize: 40
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AddButton(),
                            MinusButton()
                          ],
                        )
                      ]
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: normalCardColor
                  ),
                  width: 180,
                  height: 170,
                  padding: EdgeInsets.only(
                      top: 10, bottom: 10
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              color: textColorSecondary,
                              fontFamily: "Nunito",
                              fontSize: 20
                          ),
                        ),
                        Text(
                          "23",
                          style: TextStyle(
                              color: textColorPrimary,
                              fontFamily: "Nunito",
                              fontSize: 40
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AddButton(),
                            MinusButton()
                          ],
                        )
                      ]
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            //CALCULATE BUTTON
            Container(
                width: double.infinity,
                color: accentColor,
                padding: EdgeInsets.only(
                    top: 10, bottom: 10
                ),
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 20,
                        color: textColorPrimary
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
