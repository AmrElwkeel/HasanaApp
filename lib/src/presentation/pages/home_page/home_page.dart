import 'package:flutter/material.dart';

import '../../../utils/responsive/responsive_manager.dart';
import '../../widgets/custom_container/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveScreenManager.init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Home Page", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backg.jpg"),
              fit: BoxFit.cover,
              opacity: 2,
              repeat: ImageRepeat.repeat),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomContainer(
                height: ResponsiveScreenManager.screenHigh / 5,
                width: ResponsiveScreenManager.screenWidth / 1,
                bordRadius: 12,
                margin: EdgeInsets.symmetric(vertical: ResponsiveScreenManager.screenHigh / 6),
                widget: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                        height: ResponsiveScreenManager.screenHigh / 8,
                        width: ResponsiveScreenManager.screenWidth / 3,
                        bordRadius: 12,
                        widget:const Center(child: Text("A")),
                      ),
                      const SizedBox(width: 5 ),
                      CustomContainer(
                        height: ResponsiveScreenManager.screenHigh / 8,
                        width: ResponsiveScreenManager.screenWidth / 3,
                        bordRadius: 12,
                        widget: const Center(child: Text("B")),
                      ),
                      const SizedBox(width: 5 ),
                      CustomContainer(
                        height: ResponsiveScreenManager.screenHigh / 8,
                        width: ResponsiveScreenManager.screenWidth / 3,
                        bordRadius: 12,
                        widget:const Center(child: Text("C")),
                      ),
                      const SizedBox(width: 5 ),
                      CustomContainer(
                        height: ResponsiveScreenManager.screenHigh / 8,
                        width: ResponsiveScreenManager.screenWidth / 3,
                        bordRadius: 12,
                        widget: const Center(child: Text("D")),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
