import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // height: 650.h,
                  height: MediaQuery.sizeOf(context).height,
                  decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/aboutMe2.jpg'),fit: BoxFit.cover)
              ),
              child: Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            "About Me",
                            style:GoogleFonts.tienne(
                              fontSize:  ResponsiveValue<double>(
                                defaultValue: 25,
                                context,
                                 conditionalValues:[
                                      const Condition.equals(name: MOBILE,value: 25),
                                      const Condition.largerThan(name: MOBILE,value: 35),
                                      const Condition.largerThan(name: TABLET,value: 45,),
                                 ]
                              
                              ).value,
                            color: Colors.black),
                            
                          ),
                          const SizedBox(width: 5,),
                          Icon(Icons.person_pin_sharp,color: Colors.orange,size: ResponsiveValue<double>(
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
                    
                    Text("Hello! I'm Khalid Elmaria, a passionate and dedicated Flutter developer with over 2 years of experience in creating high-quality mobile applications. I specialize in developing cross-platform apps that provide seamless user experiences and meet the unique needs of my clients. "
                    ,style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,)),
                     
                    Text("I graduated with a Bachelor's degree in Artificial Inteligence from Kafr El Sheikh University, where I developed a strong foundation in software development for AI models deployment and design principles. My journey in mobile app development began with a deep interest in technology and a desire to create solutions that can positively impact people's lives.",
                    style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,
                          )
                    ),
                   
                    Text("I'm a firm believer in continuous learning and staying up-to-date with the latest industry trends. I enjoy collaborating with cross-functional teams and am always open to new challenges and opportunities to grow."
                    ,style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,)),
                     
                
                    Text("In my spare time, I love exploring new technologies in mobile apps developing topics as I am studying Kotlin for Android development.",
                    style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(
                      defaultValue: 25,
                            context,
                             conditionalValues:[
            const Condition.equals(name: MOBILE,value: 16),
            const Condition.largerThan(name: MOBILE,value: 17),
            const Condition.largerThan(name: TABLET,value: 25,),
                             ]
                          
                          ).value,))
                  ],
                ),
              ),
                  );
  }
}