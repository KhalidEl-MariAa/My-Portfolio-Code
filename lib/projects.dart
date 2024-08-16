import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khalidelmaria_portfolio/widget/project_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/projects.jpg"),
                    fit: BoxFit.cover
                    )
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Text("Projects",style:GoogleFonts.tienne(
                            
                            fontSize:  ResponsiveValue<double>(
                          defaultValue: 25,
                                context,
                                 conditionalValues:[
                                      const Condition.equals(name: MOBILE,value: 25),
                                      const Condition.largerThan(name: MOBILE,value: 35),
                                      const Condition.largerThan(name: TABLET,value: 45,),
                                 ]
                              
                              ).value,
                            color: Colors.white),),
                            const SizedBox(width: 5,),
                            Icon(Icons.done_outline,color: Colors.green,size: ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 35),
             const Condition.largerThan(name: MOBILE,value: 35),
             const Condition.largerThan(name: TABLET,value:35,),
                             ]
                          
                          ).value,)
                        ],
                      ),
                    ),
                    // SizedBox(height: 20,),
                    CarouselSlider(
                      
                      items: const [
                         ProjectItem(title: "CV App", bodyText: "App for creating professional CV for Jobs applying and learn about ATS system (Hive-Cubit).", imageUrl: "assets/cvApp.png",
                         githubRepo: "https://github.com/KhalidEl-MariAa/CV_app",haveVideo: true,
                         videoLink: "https://www.linkedin.com/posts/khalid-el-maria-953817215_elhamdulallah-i-have-finished-a-new-app-activity-7110135710942138368-zIeW?utm_source=share&utm_medium=member_android",),
                         ProjectItem(title: "Managerial App", bodyText: "App for managing your stocks by saving the outs and inputs of your storehouse (Hive-Cubit).", imageUrl: "assets/Managerial.png",
                         githubRepo: "https://github.com/KhalidEl-MariAa/Managerial-App",haveVideo: true,
                         videoLink: "https://www.linkedin.com/posts/khalid-el-maria-953817215_%D8%A7%D9%84%D8%AD%D9%85%D8%AF-%D9%84%D9%84%D9%87-%D8%AE%D9%84%D8%B5%D8%AA-app-%D8%A7%D8%B3%D9%85%D9%87-managrial-mvvm-activity-7156803875126099968-d1Uk?utm_source=share&utm_medium=member_android",),
                         ProjectItem(title: "Bookly App", bodyText: "Apps show the free books found in Google Books (API-Cubit-MVVM).", imageUrl: "assets/boook.png",
                         githubRepo: "https://github.com/KhalidEl-MariAa/bookly-app",haveVideo: false,),
                         ProjectItem(title: "Makanak (Company-User)", bodyText: "UI design for freelance E-commerce project.", imageUrl: "assets/makanaklogo.png",
                         githubRepo: "https://github.com/KhalidEl-MariAa/Makanak_Client/blob/main/README.md",haveVideo: true,
                        videoLink: "https://www.linkedin.com/posts/khalid-el-maria-953817215_elhamdullallah-i-have-completed-the-ui-design-activity-7208446723524902914-HAIU?utm_source=share&utm_medium=member_android",),
                         ProjectItem(title: "Notes & Tasks App", bodyText: "App for writing Notes and Tasks (Firebase - MVVM).", imageUrl: "assets/notesApp.jpg",
                         githubRepo: "https://github.com/KhalidEl-MariAa/iti-notesApp",haveVideo: true,
                         videoLink: "https://www.linkedin.com/posts/khalid-el-maria-953817215_i-want-to-share-that-i-have-finished-my-app-activity-7099550966051409920-qrWs?utm_source=share&utm_medium=member_android",),
                         ProjectItem(title: "EmoWave App", bodyText: "App for deployment AI recommendition system for movies and songs (API-Cubit-MVVM).", imageUrl: "assets/logo.png",
                         githubRepo: "https://github.com/KhalidEl-MariAa/EmoWave",haveVideo: false,),
                         
                         ],
                     options: CarouselOptions(
                      
                      scrollDirection: Axis.horizontal,
                      viewportFraction: ResponsiveValue<double>(
                      defaultValue: 0.7,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 0.9),
            const Condition.largerThan(name: MOBILE,value: 0.9),
            const Condition.largerThan(name: TABLET,value: 0.7,),
                             ]
                          
                          ).value,
                      aspectRatio: ResponsiveValue<double>(
                      defaultValue: 16/9,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 13),
            const Condition.largerThan(name: MOBILE,value: 16/9),
            const Condition.largerThan(name: TABLET,value: 16/9,),
                             ]
                          
                          ).value,
                      autoPlay: true,
                      height: ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
             Condition.equals(name: MOBILE,value: MediaQuery.sizeOf(context).height*0.3),
             Condition.largerThan(name: MOBILE,value: MediaQuery.sizeOf(context).height*0.4),
             Condition.largerThan(name: TABLET,value: MediaQuery.sizeOf(context).height*0.5,),
                             ]
                          
                          ).value,
                     )
                     ),
                  ],
                )
              );
  }
}