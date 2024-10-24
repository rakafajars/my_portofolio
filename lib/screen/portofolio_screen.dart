import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/constant/nav_item_const.dart';
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
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(3, (index) => GlobalKey());
  bool _isScrolling = false;

  void _initializeNavItems() {
    navItems = [
      NavItem(
        title: 'Home',
        onTap: () => scrollToSection(0),
        isActive: _activeIndex == 0,
      ),
      NavItem(
        title: 'Experience',
        onTap: () => scrollToSection(1),
        isActive: _activeIndex == 1,
      ),
      NavItem(
        title: 'Sertification',
        onTap: () => scrollToSection(2),
        isActive: _activeIndex == 2,
      ),
    ];
  }

  void scrollToSection(int index) async {
    if (_isScrolling) return;
    _isScrolling = true;

    // Update state immediately
    setState(() {
      _activeIndex = index;
    });

    try {
      if (index == 0) {
        await _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        final context = _sectionKeys[index].currentContext;
        if (context != null) {
          await Scrollable.ensureVisible(
            context,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      }
    } finally {
      _isScrolling = false;
    }
  }

  void _handleScroll() {
    if (!_scrollController.hasClients || _isScrolling) return;

    // Check if we're at the top
    if (_scrollController.offset <= 50) {
      if (_activeIndex != 0) {
        setState(() {
          _activeIndex = 0;
        });
      }
      return;
    }

    // Find visible section for other sections
    for (int i = 1; i < _sectionKeys.length; i++) {
      final context = _sectionKeys[i].currentContext;
      if (context != null) {
        final RenderBox box = context.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);
        final threshold = MediaQuery.of(context).size.height * 0.3;

        if (position.dy >= 0 && position.dy <= threshold && _activeIndex != i) {
          setState(() {
            _activeIndex = i;
          });
          break;
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeNavItems();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(_handleScroll);
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 24),
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width <= 600 ? 0 : 120,
              ),
              child: SectionHomeComponent(key: _sectionKeys[0]),
            ),
            const SectionSkillComponent(),
            SectionExperienceComponent(key: _sectionKeys[1]),
            SectionSertificationComponent(key: _sectionKeys[2]),
            const SectionFooterComponent(),
          ],
        ),
      ),
    );
  }
}
