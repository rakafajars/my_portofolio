import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/constant/nav_item_const.dart';
import 'package:my_portofolio/screen/component/section_education_component.dart';
import 'package:my_portofolio/screen/component/section_experience_component.dart';
import 'package:my_portofolio/screen/component/section_footer_component.dart';
import 'package:my_portofolio/screen/component/section_home_component.dart';
import 'package:my_portofolio/screen/component/section_skill_component.dart';
import 'package:my_portofolio/widget/responsive_navigation_widget.dart';

class PortofolioScreen extends StatefulWidget {
  const PortofolioScreen({super.key});

  @override
  State<PortofolioScreen> createState() => _PortofolioScreenState();
}

class _PortofolioScreenState extends State<PortofolioScreen> {
  List<NavItem> navItems = [
    NavItem(
      title: 'Home',
      onTap: () {},
    ),
    NavItem(
      title: 'Projects',
      onTap: () {},
    ),
    NavItem(
      title: 'About',
      onTap: () {},
    ),
    NavItem(
      title: 'Contact',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ResponsiveNavigationWidget(
          items: navItems,
        ),
      ),
      drawer: MediaQuery.of(context).size.width <= 600
          ? ResponsiveNavigationWidget(
              items: navItems,
            )
          : null,
      body: ListView(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width <= 600 ? 0 : 120,
            ),
            child: const SectionHomeComponent(),
          ),
          const SectionSkillComponent(),
          const SectionExperienceComponent(),
          const SectionEducationComponent(),
          const SectionFooterComponent(),
        ],
      ),
    );
  }
}
