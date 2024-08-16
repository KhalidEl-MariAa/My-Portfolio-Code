import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Education4.jpg"),fit: BoxFit.cover)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        Text("Education",style: GoogleFonts.tienne(
                          fontSize:  ResponsiveValue<double>(
                                defaultValue: 25,
                                context,
                                 conditionalValues:[
                                    const Condition.equals(name: MOBILE,value: 25),
                                    const Condition.largerThan(name: MOBILE,value: 35),
                                    const Condition.largerThan(name: TABLET,value: 45,),
                                 ]
                              
                              ).value,color: Colors.black),),
                              const SizedBox(width: 5,),
                      Icon(Icons.school,color: Colors.orange,size: ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 35),
             const Condition.largerThan(name: MOBILE,value: 25),
             const Condition.largerThan(name: TABLET,value:35,),
                             ]
                          
                          ).value,)
                      ],
                    ),
                    // SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("High School: ",style: GoogleFonts.tienne(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,color: Colors.black),),
                        Text("Mostafa Samir Badawy Languages School - 2020",style:GoogleFonts.tinos(fontSize: 
                         ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 13),
            const Condition.largerThan(name: MOBILE,value: 15),
            const Condition.largerThan(name: TABLET,value: 20,),
                             ]
                          
                          ).value,)),
                        
                      ],
                    ),
                    // SizedBox(height: 10,),
                    
                    // ,SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  
                      children: [
                        Text("University Stage: ",style: GoogleFonts.tienne(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,color: Colors.black),),
                       Text("Faculty Of Artificial Intelligence (BIO) - 2024",style:GoogleFonts.tinos(
                        fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 13),
            const Condition.largerThan(name: MOBILE,value: 15),
            const Condition.largerThan(name: TABLET,value: 20,),
                             ]
                          
                          ).value,))
                         
                      ],
                    ),
                    // SizedBox(height: 10,),
                   GestureDetector(
                    onTap: () async{
                      try{
                              await launchUrl(Uri.parse("https://drive.google.com/drive/folders/1Hx-QedyjUHNXfLXMf8Ot0ldY3arCJmXP"));
                                }
                                catch(e){
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                    },
                    child: Text("Check my certificates by click on here",style: GoogleFonts.tienne(
                      fontSize: ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,color: Colors.black)))
                    ],
                  ),
                ),
              );
  }
}