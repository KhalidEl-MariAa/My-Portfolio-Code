// ignore_for_file: use_build_context_synchronously, file_names

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MainpageSection extends StatelessWidget {
  const MainpageSection({super.key,});


  @override
  Widget build(BuildContext context) {
    return  Container(
              height: MediaQuery.sizeOf(context).height,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/portfolio1.jpeg'),fit: BoxFit.cover)
              ),
              child: Column(
                children: [
                  Text("Khalid El-Maria",style:GoogleFonts.tinos(
                    fontSize: ResponsiveValue<double>(context,
              defaultValue: 10,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 30),
  Condition.largerThan(name: MOBILE,value: 40),
  Condition.largerThan(name: TABLET,value: 60,),
  // Condition.equals(name: TABLET,value: 5,landscapeValue: 20),
 ]) .value,
                  color:const Color.fromARGB(255, 233, 233, 233,),
                  ),
                  ),

                  Text("Flutter Developer",style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(context,
              defaultValue: 10,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 20),
  Condition.largerThan(name: MOBILE,value: 30),
  Condition.largerThan(name: TABLET,value: 50,),
  // Condition.equals(name: TABLET,value: 5,landscapeValue: 20),
 ]) .value,
                  color:const Color.fromARGB(255, 233, 233, 233,)),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        const Icon(Icons.phone,color: Colors.orange,),
                        const SizedBox(width: 5,),
                        Text("Phone Number: +201061942646",style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(context,
              defaultValue: 10,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 16),
  Condition.largerThan(name: MOBILE,value:20),
  Condition.largerThan(name: TABLET,value: 30,),
  // Condition.equals(name: TABLET,value: 5,landscapeValue: 20),
 ]) .value,
                        color:const Color.fromARGB(255, 233, 233, 233,)),
                        ),
                      ],
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:90.0),
                    child: Row(
                      children: [
                        const Icon(Icons.email,color: Colors.orange,),
                        const SizedBox(width: 5,),
                        Text("Email: ",
                        style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(context,
              defaultValue: 10,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 16),
  Condition.largerThan(name: MOBILE,value: 20),
  Condition.largerThan(name: TABLET,value: 30,),
  // Condition.equals(name: TABLET,value: 5,landscapeValue: 20),
 ]) .value,
                        color:const Color.fromARGB(255, 233, 233, 233,),
                         ),),
                         Text("khalidmaria13@gmail.com",
                        style:GoogleFonts.tinos(fontSize:  ResponsiveValue<double>(context,
              defaultValue: 10,
 conditionalValues: const [
  
    Condition.equals(name: MOBILE,value: 16),
  Condition.largerThan(name: MOBILE,value: 20),
  Condition.largerThan(name: TABLET,value: 30,),
  // Condition.equals(name: TABLET,value: 5,landscapeValue: 20),
 ]) .value,
                        color:const Color.fromARGB(255, 233, 233, 233,),
                        
                         ),
                         ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:90,top: 10,bottom: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        // color: Colors.amber,
                        width: MediaQuery.sizeOf(context).width,
                        child: Center(
                          child: Row(
                            
                            children: [
                            GestureDetector(
                              onTap: () async {
                                try{
                              await launchUrl(Uri.parse("https://www.linkedin.com/in/khalid-el-maria-953817215/"));
                                }
                                catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                              },
                              child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("assets/linkedIn.png",fit: BoxFit.cover,)),
                            ),
                            const SizedBox(width: 10,),
                              GestureDetector(
                                onTap: () async {
                                    try{
                              await launchUrl(Uri.parse("https://www.facebook.com/khalid.maria.796/"));
                                }
                                catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                                },
                                child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("assets/facebook.png",fit: BoxFit.cover,)),
                              ),
                             const SizedBox(width: 10,),
                              GestureDetector(
                                onTap: () async{
                                  try{
                              await launchUrl(Uri.parse("https://www.instagram.com/khalid_aymaan/"));
                                }
                                catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                                },
                                child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("assets/instagram.png",fit: BoxFit.cover,)),
                              ),
                              const SizedBox(width: 10,),
                               GestureDetector(
                                onTap: () async{
                                  try{
                              await launchUrl(Uri.parse("https://wa.me/+201061942646"));
                                }
                                catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Check  your Internet Connection.")));
                                }
                                },
                                child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("assets/whatsapp.png",fit: BoxFit.cover,)),
                              )
                          ],),
                        ),
                      ),
                    ),
                  )
                  ],
              ),
            );
  }
}