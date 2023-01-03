import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grofast/ui/onboarding/widgets/ellipsed_rectangle.dart';
import 'package:grofast/utils/constants/colors.dart';
import 'package:grofast/utils/constants/image.dart';
import 'package:grofast/utils/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController controller = PageController();
  int currentPage=0;
  List items=[
    [AppImages.onboarding_1,"Fresh groceries to\nyour doorstep!","Lorem ipsum dolor sit amet, consectetur\nadipisicing elit, sed do eiusmod tempor\nincididunt ut labore et dolore."],
    [AppImages.onboarding_2,"Shop your daily\nnecessary!","Lorem ipsum dolor sit amet, consectetur\nadipisicing elit, sed do eiusmod."],
    [AppImages.onboarding_3,"Fast Shipment\nto your home!","Lorem ipsum dolor sit amet, consectetur\nadipisicing elit, sed do eiusmod tempor\nincididunt ut labore et dolore."]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            AnimatedContainer(
              height: MediaQuery.of(context).size.height*0.569,
              width: MediaQuery.of(context).size.width,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(items[currentPage][0]),
                      fit: BoxFit.fitWidth
                  )
              ), duration: Duration(milliseconds: 600),
              curve: Curves.slowMiddle,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height*0.189,
              right: 0,
              left: 0,
              child: CustomPaint(
                size:  Size(MediaQuery.of(context).size.height, 400),
                painter: MyPainter(),
              ),),
            Positioned(
              top: MediaQuery.of(context).size.width*1.2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Text(items[currentPage][1],textAlign: TextAlign.center, style: GoogleFonts.getFont("Raleway",color: AppColors.C_194B38,fontSize: 28,fontWeight: FontWeight.w700,),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    Text(items[currentPage][2],textAlign: TextAlign.center, style: GoogleFonts.getFont("Raleway",color: AppColors.C_9C9C9C,fontSize: 14,fontWeight: FontWeight.w500,),),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width*1.2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Align(
                    alignment: Alignment.center,
                    child: AnimatedSmoothIndicator(
                      count:  3,
                      effect:   ExpandingDotsEffect(
                        dotColor: AppColors.C_4CBB5E.withOpacity(0.5),
                        activeDotColor: AppColors.C_4CBB5E,
                        dotHeight: 8,
                      ),  // your preferred effect
                      onDotClicked: (index){},
                      activeIndex: currentPage,
                    )  ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height*0.07,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 172,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.C_2BAF6F.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              if(currentPage<2)
                                currentPage++;
                              else{
                                Navigator.pushNamed(context, RouteName.loginPage);
                              }
                            });
                          },
                          child: Container(
                            height: 80,
                            width: 152,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: const LinearGradient(
                                    colors: [
                                      AppColors.C_26AD71,
                                      AppColors.C_32CB4B
                                    ]
                                )
                            ),
                            child: const Icon(Icons.navigate_next_sharp,color: Colors.white,size: 40,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ) //Next Button
          ],
        ),
      ),
    );
  }
}
