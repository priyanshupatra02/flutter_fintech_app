import 'package:flutter/material.dart';
import 'package:flutter_fintech_app/utilities/size_config.dart';

// System packages
export 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
export 'package:flutter/services.dart';
export 'package:flutter/foundation.dart';
export 'dart:typed_data';
export 'dart:math';
export 'package:flutter/services.dart';

// Utilities
export 'package:flutter_fintech_app/utilities/size_config.dart';
export 'package:flutter_fintech_app/utilities/constants.dart';

// Dependencies
export 'package:google_fonts/google_fonts.dart';
export 'package:flutter_svg/svg.dart';
export 'package:lottie/lottie.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'package:provider/provider.dart';
export 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
export 'package:flutter_contacts/flutter_contacts.dart';
export 'package:fl_chart/fl_chart.dart';

// Screens
export 'package:flutter_fintech_app/main.dart';
export 'package:flutter_fintech_app/screens/onboarding_screen/onboarding.dart';
export 'package:flutter_fintech_app/screens/homepage/homepage.dart';
export 'package:flutter_fintech_app/screens/pay/payment_history.dart';
export 'package:flutter_fintech_app/screens/pay/cashback_page.dart';
export 'package:flutter_fintech_app/screens/homepage/scan_qr.dart';
export 'package:flutter_fintech_app/screens/profile/profile_page.dart';
export 'package:flutter_fintech_app/screens/homepage/notification_page.dart';
export 'package:flutter_fintech_app/screens/homepage/request_money.dart';
export 'package:flutter_fintech_app/screens/homepage/show_contacts.dart';
export 'package:flutter_fintech_app/screens/homepage/send_money.dart';
export 'package:flutter_fintech_app/screens/homepage/add_money_to_wallet_page.dart';
export 'package:flutter_fintech_app/screens/onboarding_screen/Registration/registration_1.dart';
export 'package:flutter_fintech_app/screens/onboarding_screen/Registration/registration_2.dart';

// nav bar destinations
export 'package:flutter_fintech_app/screens/cards/cards.dart';
export 'package:flutter_fintech_app/screens/monitoring/monitoring.dart';
export 'package:flutter_fintech_app/screens/pay/pay_page.dart';

// Custom widgets
export 'package:flutter_fintech_app/widgets/action_button.dart';
export 'package:flutter_fintech_app/widgets/onboarding_pages.dart';
export 'package:flutter_fintech_app/widgets/home.dart'; // on connecting to firebase, it will help us tp check for snapshots.
export 'package:flutter_fintech_app/widgets/custom_list_tile.dart';
export 'package:flutter_fintech_app/widgets/custom_app_bar.dart';
export 'package:flutter_fintech_app/widgets/PaymentHistoryWidgets/side_action_button.dart';
export 'package:flutter_fintech_app/widgets/PaymentHistoryWidgets/your_bills_card.dart';
export 'package:flutter_fintech_app/widgets/PaymentHistoryWidgets/pay_bills_category.dart';
export 'package:flutter_fintech_app/widgets/dashed_rect.dart';
export 'package:flutter_fintech_app/widgets/ProfileWidgets/debit_card.dart';
export 'package:flutter_fintech_app/widgets/MonitoringGraph/line_chart.dart';
export 'package:flutter_fintech_app/widgets/bottom_sheet.dart';
export 'package:flutter_fintech_app/screens/onboarding_screen/Registration/registration_otpform.dart';

Widget? scaffoldBgImage = Image.asset(
  "assets/images/hello-image.png",
  scale: getDeviceWidth(1.6),
);
