import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import 'list_for_icon.dart';

class DrawerHome extends StatefulWidget {
  static String drawerHome = "DrawerHome";

  DrawerHome({Key? key}) : super(key: key);

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  int selectIndex = -1;
  bool isExpanded = false;

  static List<DrawerIcons> drawericon = [
    // null,
    DrawerIcons(Icons.grid_view, "Dashboard"),
    // [],
    DrawerIcons(Icons.subscript, "Category"),
    // , ["Html &css", "javascrept","Html &css", "javascrept","Html &css", "javascrept"]
    DrawerIcons(Icons.markunread_outlined, "Posts"),
    DrawerIcons(Icons.pie_chart, "Analytics"),
    DrawerIcons(Icons.trending_up, "Chart"),
    DrawerIcons(Icons.power, "Plugins"),
    DrawerIcons(Icons.explore, "Explore"),
    DrawerIcons(Icons.settings, "Setting"),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      // color: AppColors.colorDrawer,
      width: width * 0.8,
      child: row(context),
    );
  }

  Widget row(BuildContext context) {
    return Row(
      children: [
        isExpanded ? BlacIconsText() : BlacIcons(context),
        // InvisbalMenu(context),
      ],
    );
  }

  Widget BlacIconsText() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.5,
      color: AppColors.color6,
      child: ListView.builder(
          itemCount: drawericon.length,
          itemBuilder: (context, index) {
            DrawerIcons cdm = drawericon[index];

            bool selected = selectIndex == index;
            return Column(
              children: [
                if (index == 0) controlButton(),
                SizedBox(
                  height: height*0.05,
                  width: width*0.4,
                  child: Row(
                    children: [
                      SizedBox(width: width*0.01,),

                      Icon(
                        drawericon[index].icon,
                        color: Colors.white,
                      ),
                      SizedBox(width: width*0.07,),
                      // title:
                      Text(
                        drawericon[index].titles,
                        style: TextStyle(color: Colors.white,fontSize: width*0.045,),
                      ),
                    ],
                  ),
                ),
                // ExpansionTile(
                //     onExpansionChanged: (z) {
                //       setState(() {
                //         selectIndex = z ? index : -1;
                //       });
                //     },
                //     // trailing: cdm.submenus.isNotEmpty
                //     //     ? null
                //     //     : Icon(
                //     //         selected
                //     //             ? Icons.keyboard_arrow_up
                //     //             : Icons.keyboard_arrow_down,
                //     //       ),
                //     iconColor: Colors.white,
                //     collapsedIconColor: Colors.white,
                //     leading:
                //
                //   // children: cdm.submenus.map((Submenu) {
                //   //   return SMenuWidget(Submenu, false);
                //   // }).toList()
                // ),
                 Padding(
                   padding:  EdgeInsets.only(left: width*0.08,right: width*0.08),
                   child: Divider(thickness: height*0.001,color: AppColors.color5,),
                 ),
              ],
            );
          }),
    );
  }



  // i need this
  Widget BlacIcons(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      width: width * 0.2,
      color: AppColors.color6,
      duration: Duration(milliseconds: 700),
      child: ListView.builder(
          itemCount: drawericon.length,
          itemBuilder: (context, index) {
            //
            return InkWell(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Column(
                children: [
                  if (index == 0) controlButton(),
                  Container(
                    height: height * 0.07,
                    alignment: Alignment.center,
                    child: Icon(
                      drawericon[index].icon,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
// i need this
  Widget controlButton() {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02),
      child: InkWell(
        onTap: () {
          return ExpandedWidged();
        },
        child: Container(
          height: height * 0.14,
          child: FlutterLogo(
            size: height * 0.09,
          ),
          padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.05),
        ),
      ),
    );
  }

  // Widget InvisbalMenu(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   return AnimatedContainer(
  //     width: isExpanded ? 0 : width * 0.3,
  //     // color: AppColors.colorDrawer,
  //     duration: Duration(milliseconds: 350),
  //     child: ListView.builder(
  //         itemCount: drawericon.length,
  //         itemBuilder: (context, index) {
  //           // DrawerIcons DI=drawericon[index];
  //
  //           bool selected = selectIndex == index;
  //           bool isValidSubMenu =
  //               selected && drawericon[index].submenus.isNotEmpty;
  //           return SubMenuWidget(
  //               [drawericon[index].titles]..addAll(drawericon[index].submenus),
  //               isValidSubMenu);
  //         }),
  //   );
  // }
// i need this
  void ExpandedWidged() {
    setState(() {
      print(isExpanded);
      isExpanded = !isExpanded;
    });
  }



  // Widget SMenuWidget(String Submenu, bool isTile) {
  //   return InkWell(
  //     onTap: () {
  //       //todo
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.all(5.0),
  //       child: Text(
  //         Submenu,
  //         style: TextStyle(
  //             color: isTile ? Colors.white : AppColors.colorButton,
  //             fontWeight: FontWeight.bold,
  //             fontSize: isTile ? 17 : 13),
  //       ),
  //     ),
  //   );
  // }


  // Widget SubMenuWidget(List<String> submenu, bool isValidSubMenu) {
  //   double height = MediaQuery.of(context).size.height;
  //
  //   return AnimatedContainer(
  //     height: isValidSubMenu
  //         ? submenu.length.toDouble() * (height * 0.03)
  //         : height * 0.2,
  //     //here for sizebox
  //     decoration: BoxDecoration(
  //       color: isValidSubMenu ? AppColors.color5 : null,
  //       borderRadius: const BorderRadius.only(
  //           topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
  //     ),
  //     alignment: Alignment.center,
  //     duration: const Duration(milliseconds: 500),
  //     child: ListView.builder(
  //         itemCount: isValidSubMenu ? submenu.length : 0,
  //         itemBuilder: (context, index) {
  //           String Submenu = submenu[index];
  //
  //           return SMenuWidget(submenu[index], index == 0);
  //         }),
  //   );
  // }

//
//   Widget InvisbalSubMenuWidget(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//
//     return Container(height: height * 0.07, color: Colors.brown);
//   }
// }
}
