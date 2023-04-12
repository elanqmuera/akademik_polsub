import 'package:flutter/material.dart';
import 'package:akademik/slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:akademik/login.dart';

// ignore: camel_case_types
class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

// ignore: camel_case_types
class _onBoardingState extends State<onBoarding> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    SliderPage(
      title: "Welcome",
      description: "Accept and digital assets, keep thern here",
      image: "images/svg/Graduation1.svg",
    ),
    SliderPage(
      title: "Application",
      description: "Accept and digital assets, keep thern here",
      image: "images/svg/webinar.svg",
    ),
    SliderPage(
      title: "Monitoring",
      description: "Accept and digital assets, keep thern here",
      image: "images/svg/informatika.svg",
    )
  ];
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 10,
                      width: (index == _currentPage) ? 40 : 10,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == _currentPage)
                              ? Colors.blue
                              : Colors.blue.withOpacity(0.9)),
                    );
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 50,
                    alignment: Alignment.center,
                    width: (_currentPage == (_pages.length - 1)) ? 200 : 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(35)),
                    child: (_currentPage == (_pages.length - 1))
                        ? TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const login()));
                              });
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.transparent),
                            child: Text(
                              "Get Started",
                              style: const TextStyle(fontSize: 19),
                            ),
                          )
                        : const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 35,
                          )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
