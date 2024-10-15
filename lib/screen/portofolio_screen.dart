import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/constant/nav_item_const.dart';
import 'package:my_portofolio/screen/component/section_education_component.dart';
import 'package:my_portofolio/screen/component/section_experience_component.dart';
import 'package:my_portofolio/screen/component/section_footer_component.dart';
import 'package:my_portofolio/screen/component/section_home_component.dart';
import 'package:my_portofolio/screen/component/section_sertification_component.dart';
import 'package:my_portofolio/screen/component/section_skill_component.dart';
import 'package:my_portofolio/widget/responsive_navigation_widget.dart';

class PortofolioScreen extends StatefulWidget {
  const PortofolioScreen({super.key});

  @override
  State<PortofolioScreen> createState() => _PortofolioScreenState();
}

class _PortofolioScreenState extends State<PortofolioScreen> {
  int _activeIndex = 0;
  late List<NavItem> navItems;

  void _initializeNavItems() {
    navItems = [
      NavItem(
        title: 'Home',
        onTap: () => selectedIndex(0),
        isActive: _activeIndex == 0,
      ),
      NavItem(
        title: 'Experience',
        onTap: () => selectedIndex(1),
        isActive: _activeIndex == 1,
      ),
      NavItem(
        title: 'Projects',
        onTap: () {},
        isActive: _activeIndex == 2,
      ),
      NavItem(
        title: 'About',
        onTap: () {},
        isActive: _activeIndex == 3,
      ),
      NavItem(
        title: 'Contact',
        onTap: () {},
        isActive: _activeIndex == 4,
      ),
    ];
  }

  void selectedIndex(int index) {
    _activeIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _initializeNavItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ResponsiveNavigationWidget(
          items: navItems,
          currentItem: navItems[_activeIndex],
        ),
      ),
      drawer: MediaQuery.of(context).size.width <= 600
          ? ResponsiveNavigationWidget(
              items: navItems,
              currentItem: navItems[_activeIndex],
            )
          : null,
      body: ListView(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        children: [
          if (_activeIndex == 0) ...[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width <= 600 ? 0 : 120,
              ),
              child: const SectionHomeComponent(),
            ),
            const SectionSkillComponent(),
          ] else if (_activeIndex == 1) ...[
            const SectionExperienceComponent(),
          ],
          // const SectionExperienceComponent(),
          // const SectionEducationComponent(),
          // const SectionSertificationComponent(),
          const SectionFooterComponent(),
        ],
      ),
    );
  }
}
