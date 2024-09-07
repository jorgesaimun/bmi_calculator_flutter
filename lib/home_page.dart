import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

enum Gender { male, female, others }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender = Gender.others;
  double height = 60;
  int weight = 70;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kInactiveCardColor
                        : kActiveCardColor,
                    cardChild: const Center(
                      child: IconContent(
                        icon: Icons.male,
                        content: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kInactiveCardColor
                        : kActiveCardColor,
                    cardChild: const Center(
                      child: IconContent(
                        icon: Icons.female,
                        content: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Center(
                child: Column(
                  children: [
                    const Text(
                      'Height',
                      style: kLableTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          height.toStringAsFixed(2),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          "inches",
                          style: kLableTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Colors.pink,
                        overlayColor: Colors.pink.withOpacity(0.2),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      ),
                      child: Slider(
                        value: height,
                        min: 0,
                        max: 150,
                        onChanged: (double value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: kActiveCardColor,
                    cardChild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Age",
                            style: kLableTextStyle,
                          ),
                          Text(
                            "$age",
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundIconButton(
                                child: const Icon(Icons.remove),
                                onPress: () {
                                  setState(() {
                                    if (age > 0) age--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                child: const Icon(Icons.add),
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kActiveCardColor,
                    cardChild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: kLableTextStyle,
                          ),
                          Text(
                            "$weight",
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundIconButton(
                                child: const Icon(Icons.remove),
                                onPress: () {
                                  setState(() {
                                    if (weight > 0) weight--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                child: const Icon(Icons.add),
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink,
            ),
            child: TextButton(
              onPressed: () {
                // Action for Calculate button
              },
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
