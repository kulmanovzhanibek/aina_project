import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/const/assets_images.dart';
import 'package:aina_project/core/routes/page_routes.gr.dart';
import 'package:aina_project/features/onBoarding/presentation/widgets/choose_lang.dart';
import 'package:aina_project/features/widgets/button/floating_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  String title1 = "Цель Aina";
  String description1 = "Помочь мусульманам найти спутника жизни и создать счастливую семью, обучить основам никаха по сунне и уберечь от совершения распространённых ошибок.";

  String title2 = "Aina - отражение души";
  String description2 = "Здесь вы сможете найти супруга или супругу не нарушая норм Ислама, узнать о том как правильно искать партнёра, какие вопросы задавать и как сделать выбор.";

  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: <Widget>[
                  if(currentPage != 0)
                    InkWell(
                        onTap: () {
                          pageController.previousPage(duration: const Duration(
                              milliseconds: 300), curve: Curves.easeInOut);
                        },
                        child: SvgPicture.asset(iconBack)
                    ),
                  Center(child: SvgPicture.asset(iconMain)),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: pageController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imageOnBoarding1),
                        const SizedBox(height: 60,),
                        Text(title1, style: textStyleH4,),
                        const SizedBox(height: 20,),
                        Text(description1,
                          style: textStyle2Description.copyWith(
                              color: colorBlackDesc),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imageOnBoarding2),
                        const SizedBox(height: 60,),
                        Text(title2, style: textStyleH4,),
                        const SizedBox(height: 20,),
                        Text(description2,
                          style: textStyle2Description.copyWith(
                              color: colorBlackDesc),)
                      ],
                    ),
                  ),
                  const ChooseLang()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                      effect: const ColorTransitionEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          dotColor: colorLightBlue,
                          activeDotColor: colorBlue
                      ),
                      controller: pageController,
                      count: 3
                  ),
                  FloatingButton(
                    onPressed: () {
                      if(currentPage == 2) {
                        context.router.push(const AuthScreenRoute());
                        // context.pushRoute(const AuthScreenRoute());
                      } else {
                        pageController.nextPage(duration: const Duration(
                            milliseconds: 300), curve: Curves.easeInOut);
                      }
                    },
                    color: colorBlue,
                    iconColor: colorWhite,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
