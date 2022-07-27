import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/presentation/componentes/default_drop_down.dart';

import '../componentes/footer.dart';

class AdaptionScreen extends StatefulWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionScreen> createState() => _AdaptionScreenState();
}

class _AdaptionScreenState extends State<AdaptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildColumn(
                  name: 'Bread',
                  drop: ['1', '2', '3'],
                ),
                buildColumn(name: 'Age', drop: ['4', '5', '6']),
                buildColumn(name: 'Size', drop: ['7', '8', '9']),
                buildColumn(name: 'Good with', drop: ['10', '11', '12']),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildColumn(name: 'Gender', drop: ['Male', 'Female']),
                //SizedBox(width: 20,),
                buildColumn(name: 'Color', drop: ['grey', 'black', 'white']),
                //  SizedBox(width: 20,),
                buildColumn(name: 'Hair Length', drop: ['19', '20', '21']),
                // SizedBox(width: 20,),
                buildColumn(name: 'Care & Behavior', drop: ['22', '23', '24']),
                //   SizedBox(width: 20,)
              ],
            ),
          ),
          const FirstContainerAdaptation(),
          const SizedBox(
            height: 60,
          ),
          const FirstContainerAdaptation(),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Show more...',
                style: TextStyle(
                  color: HexColor('#492F24'),
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          const Footer(),
        ],
      ),
    );
  }

  Column buildColumn({
    required String name,
    required List<String> drop,
  }) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: HexColor('#492F24'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
          ),
          child: DefaultDropDownButton(
            text: name,
            items: drop,
            validateText: 'must not be empty',
          ),
        ),
      ],
    );
  }
}

class FirstContainerAdaptation extends StatefulWidget {
  const FirstContainerAdaptation({Key? key}) : super(key: key);

  @override
  State<FirstContainerAdaptation> createState() =>
      _FirstContainerAdaptationState();
}

class _FirstContainerAdaptationState extends State<FirstContainerAdaptation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: HexColor('#492F24'))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/cat 1.png',
                      height: 200,
                      width: 150,
                    ),
                    Text(
                      'Caty',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#492F24'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#492F24"),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#FFE3C5"),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: HexColor('#492F24'))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/dog 4.png',
                      height: 200,
                      width: 150,
                    ),
                    Text(
                      'Elsa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#492F24'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#492F24"),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#FFE3C5"),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: HexColor('#492F24'))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/dog 5.png',
                      height: 200,
                      width: 150,
                    ),
                    Text(
                      'Doby',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#492F24'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#492F24"),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#FFE3C5"),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
