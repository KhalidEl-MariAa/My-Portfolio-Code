// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.title, required this.bodyText, required this.imageUrl, required this.githubRepo, required this.haveVideo, this.videoLink});
  final String title;
  final String bodyText;
  final String imageUrl;
  final String githubRepo;
  final bool haveVideo;
  final String? videoLink;
  


  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    Container(
                      width: ResponsiveValue<double>(
                      defaultValue: MediaQuery.sizeOf(context).width*0.5,
                            context,
                             conditionalValues:[
             Condition.equals(name: MOBILE,value: MediaQuery.sizeOf(context).width*0.8),
             Condition.largerThan(name: MOBILE,value: MediaQuery.sizeOf(context).width*0.8),
             Condition.largerThan(name: TABLET,value: MediaQuery.sizeOf(context).width*0.6,),
                             ]
                          
                          ).value,
                      height:  ResponsiveValue<double>(
                      defaultValue: MediaQuery.sizeOf(context).height*0.3,
                            context,
                             conditionalValues:[
             Condition.equals(name: MOBILE,value: MediaQuery.sizeOf(context).height*0.3),
             Condition.largerThan(name: MOBILE,value: MediaQuery.sizeOf(context).height*0.4),
             Condition.largerThan(name: TABLET,value: MediaQuery.sizeOf(context).height*0.5,),
                             ]
                          
                          ).value,
                      decoration:  BoxDecoration(color: Colors.white,
                      borderRadius:BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                              image: DecorationImage(image: AssetImage(imageUrl),
                            fit: BoxFit.fill
                            )
                            ),
                            width: MediaQuery.sizeOf(context).width*0.6*0.5 ,
                            // height: MediaQuery.sizeOf(context).height*0.5,
                            // height:200.sp,
                            
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(title,style: GoogleFonts.tienne(fontSize:  ResponsiveValue<double>(
                      defaultValue: 15,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 15),
             const Condition.largerThan(name: MOBILE,value: 20),
             const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Text(bodyText,style: TextStyle(fontSize:  ResponsiveValue<double>(
                      defaultValue: 15,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 10),
             const Condition.largerThan(name: MOBILE,value: 15),
             const Condition.largerThan(name: TABLET,value: 20,),
                             ]
                          
                          ).value),),
                                ),
                                
                                // Text("Click on:",style: TextStyle(fontSize: MediaQuery.sizeOf(context).width*0.02,fontWeight: FontWeight.bold),),
                                InkWell(
                                  onTap: () async {
                                     try{
                              await launchUrl(Uri.parse(githubRepo));
                                }
                                catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                                  },
                                  child: Text("Github repo from here",style: TextStyle(fontSize:  ResponsiveValue<double>(
                      defaultValue: 15,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 15),
             const Condition.largerThan(name: MOBILE,value: 20),
             const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,fontWeight: FontWeight.bold),)),

                                 haveVideo? InkWell(
                                  onTap: () async {
                                     try{
                              await launchUrl(Uri.parse(videoLink!));
                                }
                                catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                                  },
                                  child: Text("Take a look from here",style: TextStyle(fontSize: ResponsiveValue<double>(
                      defaultValue: 15,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 15),
             const Condition.largerThan(name: MOBILE,value: 20),
             const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,fontWeight: FontWeight.bold),))
                                : const SizedBox()
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ],
                );
  }
}