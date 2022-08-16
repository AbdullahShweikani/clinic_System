import 'package:flutter/material.dart';
import '../../consts/consts.dart';
import '../../widget/smalltext.dart';

class NotificationScreens extends StatefulWidget {
  const NotificationScreens({Key? key}) : super(key: key);
  static const String notificationScreens = "NotificationScreens";

  @override
  State<NotificationScreens> createState() => _NotificationScreensState();
}

class _NotificationScreensState extends State<NotificationScreens> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: BoxDecoration(gradient: LinearGradient(colors:[AppColors.color6,AppColors.color5] ),),),
        leading: Container(
            child: const Icon(Icons.remove),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[900],
            ),
            margin: const EdgeInsets.all(10)),
        title: const Center(child: Text("Notification")),
        elevation: 50,
        backgroundColor: AppColors.color6,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(

              backgroundImage: AssetImage("assets/images/doctor11.jpg",),
              radius: 20,

            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: orientation == Orientation.portrait
                  ? height * 0.05
                  : height * 0.2,
              color: AppColors.color6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: "Today",
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Make all is Read",
                          size: 15,
                          color: Colors.blue[900],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.4,
              width: double.infinity,
              color: AppColors.color6,
              child: ListView.builder(
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 10, right: 20, left: 20),
                    child: Container(
                      height: height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.color5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 50, left: 10),
                            child: containerImages(orientation, height, width,
                                "assets/images/doctor11.jpg", 0.12, 0.1, 0.25),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: height * 0.17,
                            width: width * 0.55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.color6),
                            child: Padding(
                              padding:  EdgeInsets.all(height*0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: height * 0.04,
                                    child: FittedBox(
                                      child: Text(
                                        "Dr.John Smith ",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: AppColors.color2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                    child: const FittedBox(
                                      child: Text(
                                        "I Need To see You In Clinic ",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                    child: const FittedBox(
                                      child: Text(
                                        "in [1:30 AM /31 May 2022]",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                    child: const FittedBox(
                                      child: Text(
                                        "1 Hours",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: orientation == Orientation.portrait
                  ? height * 0.05
                  : height * 0.2,
              color: AppColors.color6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: "yesterday",
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Make all is Read",
                          size: 15,
                          color: Colors.blue[900],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.4,
              width: double.infinity,
              color: AppColors.color6,
              child: ListView.builder(
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 10, right: 20, left: 20),
                    child: Container(
                      height: height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.color5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 50, left: 10),
                            child: containerImages(orientation, height, width,
                                "assets/images/doctor11.jpg", 0.12, 0.1, 0.25),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: height * 0.17,
                            width: width * 0.55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.color6),
                            child: Padding(
                              padding:  EdgeInsets.all(height*0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: height * 0.04,
                                    child: FittedBox(
                                      child: Text(
                                        "Dr.John Smith ",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: AppColors.color2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                    child: const FittedBox(
                                      child: Text(
                                        "I Need To see You In Clinic ",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                    child: const FittedBox(
                                      child: Text(
                                        "in [1:30 AM /31 May 2022]",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                    child: const FittedBox(
                                      child: Text(
                                        "1 Hours",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }

  Container containerImages(
      Orientation orientation,
      double height,
      double width,
      String images,
      double heightContainer,
      double heightContainerRo,
      double widthContainer) {
    return Container(
      height: orientation == Orientation.portrait
          ? height * heightContainer
          : height * heightContainerRo,
      width: width * widthContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[900],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(
            images,
          ),
        ),
      ),
    );
  }
}
