import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final imageData = ['assets/4.png', 'assets/1.png', 'assets/3.png'];
  int currentPage = 1;
  final PageController _pageController = PageController(
    viewportFraction: 0.85, // Shows part of adjacent pages
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8f8ff),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 380,
                      child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (value) {
                            setState(() {
                              currentPage = value;
                            });
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: imageData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Image.asset(
                                imageData[index],
                                width: 350,
                                height: 350,
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 20,
                        child: Center(
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: currentPage == index
                                          ? Colors.white
                                          : Colors.grey[600],
                                      shape: BoxShape.circle),
                                );
                              }),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('Find Rare Digital Art',
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                          'A creadible and excellent marketplace for non-fungable token.',
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: SizedBox(
                height: 55,
                width: 250,
                child: SlideAction(
                  outerColor: Colors.white,
                  alignment: Alignment.center,
                  text: 'Swipe',
                  innerColor: Colors.black,
                  sliderButtonIcon: SvgPicture.asset(
                    'assets/ethereum.svg',
                    color: Colors.white,
                    width: 30,
                  ),
                  textStyle: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  onSubmit: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
