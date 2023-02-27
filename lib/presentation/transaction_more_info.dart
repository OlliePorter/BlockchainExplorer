import 'package:flutter/material.dart';
import 'package:flutter_annulus/presentation/header.dart';
import 'package:ribn_toolkit/widgets/molecules/wave_container.dart';

class TransactionMoreInfo extends StatelessWidget {
  const TransactionMoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f6f9),
      extendBodyBehindAppBar: true,
      appBar: const Header(title: 'Event Explorer'),
      body: Stack(
        children: [
          Column(
            children: [
              WaveContainer(
                containerHeight: MediaQuery.of(context).size.height * .3,
                containerWidth: MediaQuery.of(context).size.width,
                waveAmplitude: 30,
                containerChild: const SizedBox(),
                // containerChild: Container(
                //   color: Colors.white,
                //   width: MediaQuery.of(context).size.width * .3,
                //   height: MediaQuery.of(context).size.height * .3,
                // ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .4),
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: const [
                    //         Icon(
                    //           Icons.open_in_full,
                    //           color: Color(0xff161616),
                    //           size: 16.0,
                    //         ),
                    //         SizedBox(
                    //           width: 6,
                    //         ),
                    //         Text(
                    //           'Expand a block to see transactions',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w600,
                    //             fontSize: 20,
                    //             color: Color(0xff161616),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // child: Container(
                    //   color: Colors.white,
                    //   width: MediaQuery.of(context).size.width * .3,
                    //   height: MediaQuery.of(context).size.height * .3,
                    // ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .35,
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff48918a),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(color: Color(0xff197D7A), width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Previous Transaction')
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff48918a),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(color: Color(0xff197D7A), width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Text('Next Transaction'),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 16.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .35,
                  height: MediaQuery.of(context).size.height * .7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffeeeeee),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffe2ecf9).withOpacity(.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 60.0),
            child: Container(
              width: 49,
              height: 49,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffffffff).withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 54,
                    offset: const Offset(0, 9),
                  ),
                ],
              ),
              child: IconButton(
                iconSize: 30,
                icon: Icon(Icons.chevron_left),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
