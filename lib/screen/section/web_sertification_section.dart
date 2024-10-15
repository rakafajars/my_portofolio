import 'package:flutter/material.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class WebSertificationSection extends StatelessWidget {
  const WebSertificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sertification',
            style: FontStyleTheme.headingStyle.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          const WebSertifitacionItemSection(),
        ],
      ),
    );
  }
}

class WebSertifitacionItemSection extends StatefulWidget {
  const WebSertifitacionItemSection({super.key});

  @override
  State<WebSertifitacionItemSection> createState() =>
      _WebSertifitacionItemSectionState();
}

class _WebSertifitacionItemSectionState
    extends State<WebSertifitacionItemSection> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://marketplace.canva.com/EAFtd8e9grU/1/0/1600w/canva-krem-dan-coklat-modern-elegan-sertifikat-penghargaan-nP83-0IaVzU.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: _isHovering ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black.withOpacity(0.7),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'aaaaaa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '12311',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
