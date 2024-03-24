import 'package:ecommerceapp/services/counterservices/counter_services.dart';
import 'package:ecommerceapp/services/firebaseservices/firebase_authservices.dart';
import 'package:ecommerceapp/services/firebaseservices/firebase_storeservices.dart';
import 'package:ecommerceapp/ui/navbar/navbar_view.dart';
import 'package:ecommerceapp/ui/views/addcard/addcard_view.dart';
import 'package:ecommerceapp/ui/views/home/home_view.dart';
import 'package:ecommerceapp/ui/views/itemdetail/item_detail.dart';
import 'package:ecommerceapp/ui/views/login/login_view.dart';
import 'package:ecommerceapp/ui/views/profileedit/edit_view.dart';
import 'package:ecommerceapp/ui/views/signup/signup_view.dart';
import 'package:ecommerceapp/ui/views/usercheck/usercheck.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: UserCheck, initial: true),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: SignUpView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: NavbarView),
  MaterialRoute(page: ItemDetailView),
  MaterialRoute(page: AddCardView),
  MaterialRoute(page: EditView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: FireBaseAuthServices),
  LazySingleton(classType: FireBaseDataStoreServices),
  LazySingleton(classType: CounterServices),
])
class App {}
