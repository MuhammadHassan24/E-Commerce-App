import 'package:animations/animations.dart';
import 'package:ecommerceapp/ui/navbar/navbar_viewmodel.dart';
import 'package:ecommerceapp/widget/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart' as badge;

class NavbarView extends StatelessWidget {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => NavbarViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              appBar: viewModel.currentIndex != 1
                  ? AppBar(
                      elevation: 2,
                      actions: [
                        IconButton(
                          onPressed: () {
                            viewModel.goToAddcard();
                          },
                          icon: viewModel.counterService.counter == 0
                              ? Icon(Icons.shopping_cart_outlined)
                              : badge.Badge(
                                  child: Icon((Icons.shopping_cart_outlined)),
                                  badgeContent: viewModel.badgeText(),
                                  badgeAnimation: badge.BadgeAnimation.scale(),
                                  badgeStyle: badge.BadgeStyle(
                                      padding: EdgeInsets.all(5),
                                      badgeColor: Colors.blue),
                                  position: badge.BadgePosition.custom(
                                      end: -7, bottom: 12)),
                        ),
                      ],
                    )
                  : null,
              drawer: CustomDrawer(
                onIndexChanged: (newIndex) {
                  viewModel.setIndex(newIndex);
                },
              ),
              body: PageTransitionSwitcher(
                duration: const Duration(milliseconds: 300),
                reverse: viewModel.reverse,
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return SharedAxisTransition(
                    child: child,
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.scaled,
                  );
                },
                child: viewModel.getView(viewModel.currentIndex),
              ),
              bottomNavigationBar: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: NavigationBar(
                  height: 70,
                  indicatorColor: Colors.blue[200],
                  elevation: 0,
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  selectedIndex: viewModel.currentIndex,
                  destinations: [
                    NavigationDestination(
                        icon: Icon(Icons.home_outlined),
                        selectedIcon: Icon(Icons.home_rounded),
                        label: "Home"),
                    NavigationDestination(
                        selectedIcon: Icon(Icons.search_rounded),
                        icon: Icon(Icons.search),
                        label: "Search"),
                    NavigationDestination(
                        selectedIcon: Icon(Icons.favorite_rounded),
                        icon: Icon(Icons.favorite_border_outlined),
                        label: "Favorite"),
                    NavigationDestination(
                        selectedIcon: Icon(Icons.person),
                        icon: Icon(Icons.person_outline),
                        label: "Profile"),
                  ],
                  onDestinationSelected: (newIndex) {
                    viewModel.setIndex(newIndex);
                  },
                ),
              ),
            ),
          );
        });
  }
}
