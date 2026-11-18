import 'package:facebook_task/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: const Color(0xff1877F2),
            tabs: [
              SvgPicture.asset("assets/Logo/home.svg", width: 24, height: 24),
              SvgPicture.asset("assets/Logo/reels.svg", width: 24, height: 24),
              SvgPicture.asset("assets/Logo/Store.svg", width: 24, height: 24),
              SvgPicture.asset("assets/Logo/Profile.svg", width: 24, height: 24),
              SvgPicture.asset("assets/Logo/Notification.svg", width: 24, height: 24),
              SvgPicture.asset("assets/Logo/proLogo.svg", width: 24, height: 24),
            ],
          ),
          title: const Text(
            "Facebook",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Color(0xff1877F2),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // قسم كتابة المنشور العلوي
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/Logo/mesii.jpg"),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: "What’s in Your Mind?",
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/Logo/image_icon.svg",
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
               Divider(),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 200,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),

                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  "assets/Logo/mesii.jpg",
                                  height: 130,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 112,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Color(0xff1877F2),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 0,
                                right: 0,
                                child: Text(
                                  "Create a\nStory",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ...List.generate(
                          3,
                              (index) => SizedBox(
                            width: 120,
                            height: 200,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'assets/Logo/mesii.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      left: 8,
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          color: Color(0xff1877F2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const CircleAvatar(
                                          radius: 16,
                                          backgroundImage: AssetImage('assets/Logo/mesii.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 1),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/Images/route.jpg"),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Route",
                        style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Icon(Icons.format_list_bulleted_outlined)
                  ],
                ),

              ),
              Image.asset("assets/Images/routee.jpg"),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}