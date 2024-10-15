import 'package:flutter/material.dart';
import 'package:loginp/ecran/hello.dart';
import 'package:loginp/ecran/screens1.dart';
import 'package:loginp/ecran/screens2.dart';
import 'package:loginp/ecran/screens3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              Screens1(),
              Screens2(),
              Screens3(),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: MediaQuery.of(context).size.height *
                  0.4, // 40% de la hauteur de l'écran
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '01.03',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Let’s find your\ndream vacation',
                          style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSans',
                            color: Color(0xFF000000),
                            wordSpacing: -3,
                            height: 1.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hotels, Resorts, Hostels & more get the \nbest prices on 2,000,000+ properties,\n worldwide',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xC58C8B8B),
                      fontFamily: 'PTSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: const Alignment(-0.7, 0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Change to the selected page index
                            pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: SmoothPageIndicator(
                            controller: pageController,
                            count: 3,
                            effect: WormEffect(
                              spacing: 1.0,
                              dotHeight: 5.0,
                              dotWidth: 35.0, // Longueur des traits
                              activeDotColor: const Color(0xFF018868),
                              dotColor: Colors.grey.shade300,
                            ),
                            onDotClicked: (index) {
                              pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const Hello()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF018868),
                            shape: const RoundedRectangleBorder(),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 13,
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                'Get started',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
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
        ],
      ),
    );
  }
}
