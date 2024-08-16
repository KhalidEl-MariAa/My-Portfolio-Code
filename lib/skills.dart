import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key, required this.skills});
 final List skills;
  @override
  Widget build(BuildContext context) {
    return  Container(
                height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/skills.png'),fit: BoxFit.cover)
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         Padding(
                           padding: const EdgeInsets.only(bottom: 20.0),
                           child: Row(
                             children: [
                               Text(
                                "Skills",
                                style:GoogleFonts.tienne(
                                  fontSize:  ResponsiveValue<double>(
                                defaultValue: 25,
                                context,
                                 conditionalValues:[
                                           const Condition.equals(name: MOBILE,value: 25),
                                           const Condition.largerThan(name: MOBILE,value: 35),
                                           const Condition.largerThan(name: TABLET,value: 45,),
                                 ]
                                                         
                                                         ).value,color: Colors.black),
                                
                                                       ),
                                          const SizedBox(width: 5,),
                  Icon(Icons.lightbulb,color: Colors.orange,size: ResponsiveValue<double>(
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
                      Center(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                
                              itemCount: skills.length,
                               itemBuilder: (context, index) => Container(
                                constraints: const BoxConstraints(maxWidth: 100),
                                color:Colors.transparent,
                                // height: 50.,
                                child: Center(child: Row(
                            children: [
                               const Icon(Icons.circle,color: Colors.black,size: 15,),
                              const SizedBox(width: 5,),
                              Text(skills[index],style:GoogleFonts.tinos(
                                fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 15),
            const Condition.largerThan(name: MOBILE,value: 18),
            const Condition.largerThan(name: TABLET,value: 23,),
                             ]
                          
                          ).value,),)
                              ]
                              ,),)
                                ) ,),
                      ),
                    ],
                  ),
                )
               
              );
  }
}