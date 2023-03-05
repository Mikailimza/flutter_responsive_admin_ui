import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/src/message_pages.dart';
import '../responsive/deskop_scaffold.dart';
import '../responsive/mobile_scaffold.dart';
import '../responsive/tablet_scaffold.dart';
import '../responsive_layout.dart';

mixin getPages {
  static List<GetPage<dynamic>>? page = [
    GetPage(
      name: '/home',
      page: () => const ResponsiveLayout(
          mobileScaffold: MobileScffold(),
          tabletScaffold: TabletScafold(),
          deskopScaffold: DeskopScafold()),
    ),
    GetPage(
        name: '/myMessage',
        page: () => const MessagePages(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.size),
  ];
}
