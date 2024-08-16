import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:khalidelmaria_portfolio/about_me.dart';
import 'package:khalidelmaria_portfolio/education.dart';
// ignore: unused_import
import 'package:khalidelmaria_portfolio/layout/layout.dart';
import 'package:khalidelmaria_portfolio/mainPage.dart';
import 'package:khalidelmaria_portfolio/projects.dart';
import 'package:khalidelmaria_portfolio/resume.dart';
import 'package:khalidelmaria_portfolio/skills.dart';
import 'package:responsive_framework/responsive_framework.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
List skills= ["Dart","OOP","Flutter",
"Provider","Bloc-Cubit",
"APIs","Hive","Sqflite","Responsive UI","Payment","MVC Pattern","MVVM Pattern","Clean Arch background"];
ScrollController scrollControl = ScrollController();
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          actions: [
            
            InkWell(
              child: Text("Contact me",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,
              fontSize:  ResponsiveValue<double>(context,
              defaultValue: 20,
              
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 9),
  Condition.largerThan(name: MOBILE,value: 12),
  Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),
  // Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),
  // Condition.equals(name: TABLET,value: 30,landscapeValue: 20),
 ]).value)
 ,),onTap: () {
              scrollControl.animateTo(scrollControl.position.minScrollExtent, 
              duration:const Duration(seconds: 3),
               curve: Curves.linear);
            },),
            const SizedBox(width: 10),
            InkWell(
              child: Text("About me",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: ResponsiveValue<double>(context,
              defaultValue: 25,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 9),
  Condition.largerThan(name: MOBILE,value: 12),
  Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),
  // Condition.equals(name: TABLET,value: 30,landscapeValue: 20),
 ]).value),),onTap: () {
              scrollControl.animateTo(scrollControl.position.maxScrollExtent/5.5, 
              duration:const Duration(seconds: 3),
               curve: Curves.linear);
            },),
            const SizedBox(width: 10,),
            InkWell(
              child: Text("Education",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: ResponsiveValue<double>(context,
              defaultValue: 25,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 9),
  Condition.largerThan(name: MOBILE,value: 12),
  Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),
  // Condition.equals(name: TABLET,value: 30,landscapeValue: 20),
 ]).value)),onTap: () {
              scrollControl.animateTo(scrollControl.position.maxScrollExtent/2.6, 
              duration:const Duration(seconds: 3),
               curve: Curves.linear);
            },),
            const SizedBox(width: 10,),
            InkWell(
              child: Text("Skills",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,
              fontSize: ResponsiveValue<double>(context,
              defaultValue: 25,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 9),
  Condition.largerThan(name: MOBILE,value: 12),
  Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),
  // Condition.equals(name: TABLET,value: 30,landscapeValue: 20),
 ]).value)),onTap: () {
              scrollControl.animateTo(scrollControl.position.maxScrollExtent/1.95, 
              duration:const Duration(seconds: 3),
               curve: Curves.linear);
            },),
            const SizedBox(width: 10,),
            InkWell(
              child: Text("Projects",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: ResponsiveValue<double>(context,
              defaultValue: 25,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 9),
    Condition.largerThan(name: MOBILE,value: 12),
  Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),

 ]).value)),onTap: () {
              scrollControl.animateTo(scrollControl.position.maxScrollExtent/1.25, 
              duration:const Duration(seconds: 3),
               curve: Curves.linear);
            },),
            const SizedBox(width: 10,),
            InkWell(
              child: Text("Resume",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,
              fontSize: ResponsiveValue<double>(context,
              defaultValue: 10,
 conditionalValues: const [
  Condition.equals(name: MOBILE,value: 9),
  Condition.largerThan(name: MOBILE,value: 12),
  Condition.largerThan(name: TABLET,value: 20,landscapeValue: 20),
  // Condition.equals(name: TABLET,value: 5,landscapeValue: 20),
 ]).value
 )
 )
 ,onTap: () {
              scrollControl.animateTo(scrollControl.position.maxScrollExtent-55, 
              duration:const Duration(seconds: 3),
               curve: Curves.linear);
            },),
            const SizedBox(width: 5,),
      
          ],
        ),
        body: CustomScrollView(
          controller: scrollControl,
          slivers: [
            const SliverToBoxAdapter(
              child:MainpageSection(
              )
            ),
      
            const SliverToBoxAdapter(
              child: AboutMeSection()
                    ),
      
               const SliverToBoxAdapter(
                child: EducationSection()
               ),
               SliverToBoxAdapter(
                child:SkillsSection(skills: skills)
               ),
               const SliverToBoxAdapter(
                child:ProjectsSection()
               ),
               const SliverToBoxAdapter(
                child: ResumeSection()
               )
               
            
            
          ],
        ),
      );
      
   
  }
}