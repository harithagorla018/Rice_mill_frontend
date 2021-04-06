import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import './widgets/Hex_color.dart';
import '../Login/constants.dart';
import '../Login/login.dart';
import '../Login/widgets/Hex_color.dart';
import '../Login/widgets/header.dart';
import '../Login/widgets/next_page_button.dart';
import '../Login/widgets/onboarding_page_indicator.dart';
import '../Login/widgets/ripple.dart';
import '../Login/signup.dart';
// import '../../screens/login/login.dart';
// import '../../screens/onboarding/pages/community/index.dart';
// import '../../screens/onboarding/pages/education/index.dart';
// import '../../screens/onboarding/pages/onboarding_page.dart';
// import '../../screens/onboarding/pages/work/index.dart';
// import '../../screens/onboarding/widgets/header.dart';
// import '../../screens/onboarding/widgets/next_page_button.dart';
// import '../../screens/onboarding/widgets/onboarding_page_indicator.dart';
// import '../../screens/onboarding/widgets/ripple.dart';

class Onboarding extends StatefulWidget {
  final double screenHeight;

  const Onboarding({
    @required this.screenHeight,
  }) : assert(screenHeight != null);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  AnimationController _cardsAnimationController;
  AnimationController _pageIndicatorAnimationController;
  AnimationController _rippleAnimationController;

  Animation<Offset> _slideAnimationLightCard;
  Animation<Offset> _slideAnimationDarkCard;
  Animation<double> _pageIndicatorAnimation;
  Animation<double> _rippleAnimation;

  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _cardsAnimationController = AnimationController(
      vsync: this,
      // duration: CardAnimationDuration,
    );
    // _pageIndicatorAnimationController = AnimationController(
    //   vsync: this,
    //   // duration: ButtonAnimationDuration,
    // );
    // _rippleAnimationController = AnimationController(
    //   vsync: this,
    //   // duration: RippleAnimationDuration,
    // );

    // _rippleAnimation = Tween<double>(
    //   begin: 0.0,
    //   end: widget.screenHeight,
    // ).animate(CurvedAnimation(
    //   parent: _rippleAnimationController,
    //   curve: Curves.easeIn,
    // ));

    // _setPageIndicatorAnimation();
    _setCardsSlideOutAnimation();
  }

  @override
  // void dispose() {
  //   _cardsAnimationController.dispose();
  //   _pageIndicatorAnimationController.dispose();
  //   _rippleAnimationController.dispose();
  //   super.dispose();
  // }

  bool get isFirstPage => _currentPage == 1;

  void _setCardsSlideInAnimation() {
    setState(() {
      _slideAnimationLightCard = Tween<Offset>(
        begin: Offset(3.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _cardsAnimationController,
        curve: Curves.easeOut,
      ));
      _slideAnimationDarkCard = Tween<Offset>(
        begin: Offset(1.5, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _cardsAnimationController,
        curve: Curves.easeOut,
      ));
      _cardsAnimationController.reset();
    });
  }

  void _setCardsSlideOutAnimation() {
    setState(() {
      _slideAnimationLightCard = Tween<Offset>(
        begin: Offset.zero,
        end: Offset(-3.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _cardsAnimationController,
        curve: Curves.easeIn,
      ));
      _slideAnimationDarkCard = Tween<Offset>(
        begin: Offset.zero,
        end: Offset(-1.5, 0.0),
      ).animate(CurvedAnimation(
        parent: _cardsAnimationController,
        curve: Curves.easeIn,
      ));
      _cardsAnimationController.reset();
    });
  }

  // void _setPageIndicatorAnimation({bool isClockwiseAnimation = true}) {
  //   var multiplicator = isClockwiseAnimation ? 2 : -2;

  //   setState(() {
  //     _pageIndicatorAnimation = Tween(
  //       begin: 0.0,
  //       end: multiplicator * pi,
  //     ).animate(
  //       CurvedAnimation(
  //         parent: _pageIndicatorAnimationController,
  //         curve: Curves.easeIn,
  //       ),
  //     );
  //     _pageIndicatorAnimationController.reset();
  //   });
  // }

  // void _setNextPage(int nextPageNumber) {
  //   setState(() {
  //     _currentPage = nextPageNumber;
  //   });
  // }

  Future<void> _nextPage() async {
    switch (_currentPage) {
      case 1:
        if (_pageIndicatorAnimation.status == AnimationStatus.completed) {
          await _goToLogin();
        }
        break;
    }
  }

  Future<void> _goToLogin() async {
    await _rippleAnimationController.forward();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LoginPage(
            // screenHeight: widget.screenHeight,
            ),
      ),
    );
  }
  Future<void> _goToSignup() async {
    await _rippleAnimationController.forward();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => SignupPage(
            // screenHeight: widget.screenHeight,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      HexColor('#283c86'),
                      DarkBlue,
                      Blue,
                      Colors.white,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                    tileMode: TileMode.clamp),
              ),
              // child: Padding(
              //   padding: const EdgeInsets.all(PaddingL),
              //   child: Column(
              //     children: <Widget>[
              //       Header(
              //         onSkip: () async => await _goToLogin(),
              //       ),
                    // Expanded(
                    //   // child: _getPage(),
                    // ),
                    // AnimatedBuilder(
                    //   animation: _pageIndicatorAnimation,
                    //   child: NextPageButton(
                    //     onPressed: () async => await _nextPage(),
                    //   ),
                    //   builder: (_, Widget child) {
                    //     return OnboardingPageIndicator(
                    //       angle: _pageIndicatorAnimation.value,
                    //       currentPage: _currentPage,
                    //       child: child,
                    //     );
                    //   },
                    // ),
                  // ],
                ),
              ),
            // ),
          // ),
          // AnimatedBuilder(
          //   animation: _rippleAnimation,
          //   builder: (_, Widget child) {
          //     return Ripple(
          //       radius: _rippleAnimation.value,
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
