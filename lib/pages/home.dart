import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Introduction(),
            Text(
              "A little bit about me",
              style: textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            const WorkHistory(),
          ],
        ),
      ),
    );
  }
}

/// Introduction
class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      fit: StackFit.passthrough,
      children: [
        IntroductionBackground(),
        IntroductionContent(),
      ],
    );
  }
}

// Introduction Content
class IntroductionContent extends StatelessWidget {
  const IntroductionContent({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 300,
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.instagram),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.linkedin),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.github),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.discord),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        width: 3.0,
                        color: Colors.white,
                      ),
                    ),
                    child: BlurryContainer(
                      blur: 10,
                      elevation: 12.0,
                      color: Colors.white.withOpacity(0.4),
                      padding: const EdgeInsets.all(45.0),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Hey, I'm Olive 👋🏾",
                              style: textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "A full stack product designer creating digital experiences that uplifts, simplifies and nurtures human connection 🫱🏼‍🫲🏾",
                              style: textTheme.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Get in Touch "),
                                      Icon(Icons.mail),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          FontAwesomeIcons.computerMouse,
                        ),
                      ),
                      Text(
                        "Scroll down",
                        style: textTheme.displaySmall,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}

// Introduction Background
class IntroductionBackground extends StatelessWidget {
  const IntroductionBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: SvgPicture.asset(
                "assets/big_bg_1.svg",
              ),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: SvgPicture.asset(
              "assets/small_bg_1.svg",
              fit: BoxFit.cover,
            )),
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}

/// WorkHistory
class WorkHistory extends StatelessWidget {
  const WorkHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      fit: StackFit.passthrough,
      children: [
        WorkHistoryBackground(),
        WorkHistoryContent(),
      ],
    );
  }
}

// WorkHistory Content
class WorkHistoryContent extends StatelessWidget {
  const WorkHistoryContent({super.key});

  Widget xp({
    required String number,
    required String category,
    required TextTheme textTheme,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: textTheme.labelLarge,
          ),
          Text(
            category,
            style: textTheme.labelSmall,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        const SizedBox(height: 400,),

        Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 0.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              10.0,
                              10.0,
                            ),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/olive.jpeg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(
                      width: 3.0,
                      color: Colors.white,
                    ),
                  ),
                  child: BlurryContainer(
                    blur: 10,
                    elevation: 12.0,
                    color: Colors.white.withOpacity(0.4),
                    padding: const EdgeInsets.all(8),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Text(
                      "I’m driven by an unwavering curiosity for understanding human behavior and a profound commitment to tackling real-world challenges through intuitive, impactful and creative designs.\nWelcome to my portfolio, where design meets purpose, and innovation intertwines with user-centric solutions.",
                      style: textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 400.0, bottom: 20.0),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 3,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: xp(
                        number: "03+",
                        category: "Years \nExperienced",
                        textTheme: textTheme,
                      ),
                    ),
                    Expanded(
                      child: xp(
                        number: "05+",
                        category: "Completed \nProjects",
                        textTheme: textTheme,
                      ),
                    ),
                    Expanded(
                      child: xp(
                        number: "03+",
                        category: "Companies \nWorked",
                        textTheme: textTheme,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Wrap(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Download Resume "),
                    Icon(Icons.download),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//WorkHistory Background
class WorkHistoryBackground extends StatelessWidget {
  const WorkHistoryBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(
            "assets/big_bg_2.svg",
            fit: BoxFit.cover,
          )
        ),
        Padding(
          padding: const EdgeInsets.only(top: 350.0),
          child: SvgPicture.asset(
            "assets/small_bg_2.svg",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
