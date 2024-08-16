import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:khalidelmaria_portfolio/widget/pdfscreen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: MediaQuery.sizeOf(context).height,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/resume.jpg"),fit: BoxFit.fill )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text("Resume",style:GoogleFonts.tienne(fontSize: ResponsiveValue<double>(
                              defaultValue: 25,
                                    context,
                                     conditionalValues:[
                                          const Condition.equals(name: MOBILE,value: 25),
                                          const Condition.largerThan(name: MOBILE,value: 35),
                                          const Condition.largerThan(name: TABLET,value: 45,),
                                     ]
                                  
                                  ).value,color: Colors.white),
                                  ),
                                  const SizedBox(width: 5,),
                                  Icon(Icons.file_copy,color: Colors.blue,size: ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 25),
             const Condition.largerThan(name: MOBILE,value: 25),
             const Condition.largerThan(name: TABLET,value:35,),
                             ]
                          
                          ).value,)
                      ],
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PdfScreen(),)) ,
                      child:Text("View my Resume",style: TextStyle(color: Colors.black,fontSize:  ResponsiveValue<double>(
                          defaultValue: 25,
                                context,
                                 conditionalValues:[
                                      const Condition.equals(name: MOBILE,value: 15),
                                      const Condition.largerThan(name: MOBILE,value: 25),
                                      const Condition.largerThan(name: TABLET,value: 30,),
                                 ]
                              
                              ).value),) ,),
                  ),
                  // const Spacer(),
                  // SizedBox(height: 15,),
                  const Divider(color: Colors.black,thickness: 4,),
                  // SizedBox(height: 15,),
                  // const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text("Experience",style:GoogleFonts.tienne(fontSize: ResponsiveValue<double>(
                              defaultValue: 25,
                                    context,
                                     conditionalValues:[
                                          const Condition.equals(name: MOBILE,value: 25),
                                          const Condition.largerThan(name: MOBILE,value: 35),
                                          const Condition.largerThan(name: TABLET,value: 45,),
                                     ]
                                  
                                  ).value,color: Colors.white),
                                  ),
                                 const SizedBox(width: 5,),
                                  Icon(Icons.work,color: Colors.orange,size: ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 25),
             const Condition.largerThan(name: MOBILE,value: 25),
             const Condition.largerThan(name: TABLET,value:35,),
                             ]
                          
                          ).value,)
                      ],
                    ),
                  ),
                  // const Spacer(),
                   Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: Column(
                       children: [
                         Text("- Summer Training in Information Technology Institute (ITI) including Dart,Flutter, OOP and Firebase."
                          ,style:GoogleFonts.tinos(fontSize: ResponsiveValue<double>(
                          defaultValue: 15,
                                context,
                                 conditionalValues:[
                                      const Condition.equals(name: MOBILE,value: 15),
                                      const Condition.largerThan(name: MOBILE,value: 25),
                                      const Condition.largerThan(name: TABLET,value:35,),
                                 ]
                              
                              ).value,color: Colors.white)),

                              Text("- Android App Development using Flutter Internship at CodeCasa Company and building three simple apps."
                      ,style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
             const Condition.equals(name: MOBILE,value: 15),
             const Condition.largerThan(name: MOBILE,value: 25),
             const Condition.largerThan(name: TABLET,value:35,),
                             ]
                          
                          ).value,color: Colors.white)),
                       ],
                     ),
                   ),
                    
                ],
              ),
              );
  }
}