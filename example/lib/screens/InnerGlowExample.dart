// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:innerglow/innerglow.dart';
import 'package:innerglowexpamle/screens/helper/helperUi.dart';
import 'package:innerglowexpamle/screens/helper/texthelper.dart';
import 'package:innerglowexpamle/tools/layoutSize.dart';

class InnerGlowExample extends StatelessWidget {
  const InnerGlowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [

            Positioned.fill(
                child: Image.asset(
                  'assets/star.jpg',
                  fit: BoxFit.fill,
                )
            ),

            Positioned.fill(
              child: SafeArea(
                child: ListView(
                  children: [

                    helperUi
                      (
                        child1: InnerGlow(
                          width: width(context, 0.4),
                          height: width(context, 0.4),
                        ),
                        child2: InnerGlow(
                          width: width(context, 0.4),
                          height: width(context, 0.4),
                          glowRadius: 20,
                        ),
                    ),

                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        strokeLinearGradient: const LinearGradient(
                          colors: [Colors.red,Colors.red]
                        ),
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        glowBlur: 30,
                      ),
                    ),

                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        thickness: 30,
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        blurBackground: 3,
                      ),
                    ),

                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        glowRadius: 100,
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        baseDecoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow (
                              color: Colors.amber.withOpacity(0.2),
                              blurRadius: 5,
                              offset: const Offset (0, 0), // Shadow position
                            ),
                          ],
                        ),
                      ),
                    ),

                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        thickness: 25,
                        glowBlur: 3,
                        strokeLinearGradient: const LinearGradient(
                          colors: [Colors.green,Colors.green]
                        ),
                        baseDecoration: const BoxDecoration(
                          color: Colors.lightGreen
                        ),
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        margin: const EdgeInsets.all(10),
                        glowRadius: 30,
                        blurBackground: 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              text_helper(data: 'Done', font: 'big', color: Colors.white, size: 0.08, bold: false),
                              Text('Final play the game and make enjoy',style: text_helper.customstyle
                                ('small',Colors.white, 0.04, context, false),textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                      ),
                    ),

                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.2),
                        glowRadius: 20,
                        thickness: 10,
                        glowBlur: 3,
                        strokeLinearGradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.white,Colors.black]
                        ),
                        baseDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 0,
                              offset: const Offset (0, 0), // Shadow position
                            ),
                          ],
                        ),
                        child: Center(
                          child: text_helper(data: 'Play', font:'big', color: Colors.white,
                              size: 0.08, bold: false),
                        ),
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.2),
                        glowRadius: 20,
                        thickness: 7,
                        glowBlur: 3,
                        baseDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.purple,Colors.blue]
                          ),
                        ),
                        child: Center(
                          child: text_helper(data: 'Play', font:'big', color: Colors.white,
                              size: 0.08, bold: false),
                        ),
                      ),
                    ),


                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.2),
                        glowRadius: 20,
                        thickness: 10,
                        glowBlur: 3,
                        blurBackground: 1,
                        strokeLinearGradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.red,Colors.amber]
                        ),
                        child: Center(
                          child: text_helper(data: 'Play', font:'big', color: Colors.white,
                              size: 0.08, bold: false),
                        ),
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.2),
                        glowRadius: 20,
                        thickness: 10,
                        glowBlur: 5,
                        strokeLinearGradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.white,Colors.black]
                        ),
                        baseDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.lightBlueAccent,Colors.teal]
                          ),
                        ),
                        child: Center(
                          child: text_helper(data: 'Play', font:'big', color: Colors.white,
                              size: 0.08, bold: false),
                        ),
                      ),
                    ),

                    helperUi
                      (
                      child1: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        glowRadius: 100,
                        strokeLinearGradient: const LinearGradient(
                          colors: [Colors.transparent,Colors.red]
                        ),
                      ),
                      child2: InnerGlow(
                        width: width(context, 0.4),
                        height: width(context, 0.4),
                        glowRadius: 20,
                        strokeLinearGradient: const LinearGradient(
                          colors: [Colors.black,Colors.black]
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InnerGlow(
                          width: width(context, 0.8),
                          height: width(context, 0.7),
                          glowRadius: 20,
                          blurBackground: 0.1,
                          thickness: 13,
                          glowBlur: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                text_helper(data: 'Done', font: 'big', color: Colors.white, size: 0.15, bold: false),
                                Text('Final play the game and make enjoy',style: text_helper.customstyle
                                  ('small',Colors.white, 0.04, context, true),textAlign: TextAlign.center,),
                                const SizedBox(height: 20,),
                                InnerGlow(
                                  width: width(context, 0.6),
                                  height: width(context, 0.2),
                                  glowRadius: 20,
                                  thickness: 10,
                                  glowBlur: 5,
                                  strokeLinearGradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [Colors.white,Colors.black.withOpacity(0.7)]
                                  ),
                                  baseDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [Colors.purpleAccent,Colors.deepPurple]
                                    ),
                                  ),
                                  child: Center(
                                    child: text_helper(data: 'Lets Play', font:'big', color: Colors.white,
                                        size: 0.06, bold: false),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),




                  ],
                ),
              )
            )


          ],
        ),

    );
  }
}
