import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      case companyInfoDisplayName:
        return _customIcon(Icons.house_outlined, itemName);
      case usersDisplayName:
        return _customIcon(Icons.people, itemName);
       case vendorsDisplayName:
        return _customIcon(Icons.shop_2, itemName); 
      case catalogDisplayName:
        return _customIcon(Icons.production_quantity_limits, itemName);  
      case discountsDisplayName:
        return _customIcon(Icons.card_giftcard_outlined, itemName);
      case warehousesDisplayName:
        return _customIcon(Icons.warehouse_outlined, itemName); 
      case productsCameDisplayName:
        return _customIcon(Icons.production_quantity_limits_sharp, itemName);   
      case transferPageDisplayName:
        return _customIcon(Icons.transform_outlined, itemName);  
      case ordersDisplayName:
        return _customIcon(Icons.open_with_rounded, itemName);
      case allCashesDisplayName:
        return _customIcon(Icons.money_outlined, itemName);
      case startingAmountDisplayName:
        return _customIcon(Icons.money_off_outlined, itemName);
      case pkoDisplayName:
        return _customIcon(Icons.euro_outlined, itemName);  
      case rkoDisplayName:
        return _customIcon(Icons.currency_ruble_outlined, itemName);        
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }

  // Function to build an AdminMenuItem with dynamic icon based on isActive and isHovering states
  AdminMenuItem buildMenuItem(String title, String route, {List<AdminMenuItem>? children}) {
    return AdminMenuItem(
      title: title,
      route: route,
      children: children,
      iconBuilder: (isActive, isHovering) {
        IconData icon;
        switch (title) {
          case 'Основное':
            icon = Icons.home;
            break;
          case 'Склады':
            icon = Icons.storage;
            break;
          case 'Продажа':
            icon = Icons.shopping_cart;
            break;
          case 'Финансы':
            icon = Icons.attach_money;
            break;
          case 'Отчеты':
            icon = Icons.bar_chart;
            break;
          default:
            icon = Icons.category;
        }

        return _customIcon(icon, title);
      },
    );
  }

  // Function to build a list of AdminMenuItem instances with sub-items
  List<AdminMenuItem> buildMenuItems() {
    return [
      buildMenuItem(
        'Основное',
        '/overview',
        children: [
          buildMenuItem('Компания', '/company_info'),
          buildMenuItem('Сотрудники', '/users_screen'),
          buildMenuItem('Поставщики', '/suppliers'),
          buildMenuItem('Клиенты', '/clients'),
          buildMenuItem('Каталог', '/catalog'),
          buildMenuItem('Акции', '/promotions'),
        ],
      ),
      buildMenuItem(
        'Склады',
        '/warehouses',
        children: [
          buildMenuItem('Все склады', '/warehouses'),
          buildMenuItem('Поступление', '/inventory'),
          buildMenuItem('Перемещение', '/transfers'),
        ],
      ),
      buildMenuItem(
        'Продажа',
        '/orders',
        children: [
          buildMenuItem('Список заказов', '/orders'),
        ],
      ),
      buildMenuItem(
        'Финансы',
        '/registers',
        children: [
          buildMenuItem('Все кассы', '/registers'),
          buildMenuItem('Ввод начальных остатков', '/initial_balance'),
          buildMenuItem('ПКО', '/cash_out'),
          buildMenuItem('РКО', '/cash_in'),
        ],
      ),
      buildMenuItem(
        'Отчеты',
        '/reports',
        children: [],
      ),
    ];
  }
}

class AdminMenuItem {
  final String title;
  final String? route;
  final List<AdminMenuItem>? children;
  final Widget? Function(bool isActive, bool isHovering)? iconBuilder;

  AdminMenuItem({
    required this.title,
    this.route,
    this.children,
    this.iconBuilder,
  });
}

