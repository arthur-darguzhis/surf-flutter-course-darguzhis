import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_style.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/widgets/custom_buttom_nav_bar.dart';
import 'package:places/ui/widgets/visited_sight_card.dart';
import 'package:places/ui/widgets/want_to_visit_sight_card.dart';

class TabBarOfVisiting extends StatefulWidget {
  @override
  _TabBarOfVisitingState createState() => _TabBarOfVisitingState();
}

class _TabBarOfVisitingState extends State<TabBarOfVisiting> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Избранное',
          textAlign: TextAlign.center,
          style: AppTextStyles.textMedium18Black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(52),
          child: TabBarVisitingIndicator(tabController!),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        Column(
          children: [
            WantToVisitSightCard(mocks[0]),
            WantToVisitSightCard(mocks[1]),
          ],
        ),
        Column(
          children: [VisitedSightCard(mocks[2])],
        )
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       //SvgPicture.asset('res/icons/card.svg'),
        //       Text(
        //         AppStrings.empty,
        //         style: AppTextStyles.textMedium18Secondary,
        //       ),
        //       Text(
        //         AppStrings.emptyPlacesWantToVisit,
        //         style: AppTextStyles.textRegular14Secondary,
        //       )
        //     ],
        //   ),
        // ),
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       //SvgPicture.asset('res/icons/go.svg'),
        //       Text(
        //         AppStrings.empty,
        //         style: AppTextStyles.textMedium18Secondary,
        //         textAlign: TextAlign.center,
        //       ),
        //       Text(
        //         AppStrings.emptyVisitedPlaces,
        //         style: AppTextStyles.textRegular14Secondary,
        //         textAlign: TextAlign.center,
        //       )
        //     ],
        //   ),
        // ),
      ]),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class TabBarVisitingIndicator extends StatelessWidget {
  final TabController tabController;

  TabBarVisitingIndicator(this.tabController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: AppColors.backgroundColorForTabBar, borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Row(
          children: [
            for (int i = 0; i < tabController.length; i++)
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: tabController.index == i
                        ? AppColors.tabBarSelectedDecoration
                        : AppColors.tabBarUnelectedDecoration,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: TextButton(
                    onPressed: (){
                      tabController.index = i;
                    },
                    child: Center(
                      child: Text(
                        AppStrings.visitingScreenTabs[i],
                        style:
                            tabController.index == i ? AppTextStyles.textBold14White : AppTextStyles.textBold14Secondary,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
