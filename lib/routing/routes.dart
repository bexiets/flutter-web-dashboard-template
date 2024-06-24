

// Existing routes and menu items
const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const driversPageDisplayName = "Drivers";
const driversPageRoute = "/drivers";

const clientsPageDisplayName = "Клиенты";
const clientsPageRoute = "/clients";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

const companyInfoDisplayName = 'Компания';
const companyInfoPageRoute = '/company_info';

const usersDisplayName = 'Сотрудники';
const usersPageRoute = '/users';

const vendorsDisplayName = 'Поставщики';
const vendorsPageRoute = '/vendors';

// const clientsDisplayName = 'Com';
// const clientssPageRoute = '/company_info';

const catalogDisplayName = 'Каталог';
const catalogPageRoute = '/catalog';

const discountsDisplayName = 'Акции';
const discountsPageRoute = '/discounts';

const warehousesDisplayName = 'Склады';
const warehousesPageRoute = '/warehouses';

const productsCameDisplayName = 'Поступление';
const productsCamePageRoute = '/products_came';

const transferPageDisplayName = 'Перемещение';
const transferPagePageRoute = '/transfer';

const ordersDisplayName = 'Список Заказов';
const ordersPageRoute = '/orders';

const allCashesDisplayName = 'Все кассы';
const allCashesPageRoute = '/cashes';

const startingAmountDisplayName = 'Ввод начальных остатков';
const startingAmountPageRoute = '/starting_amount';

const pkoDisplayName = 'ПКО';
const pkoPageRoute = '/pko';

const rkoDisplayName = 'РКО';
const rkoPageRoute = '/rko';




class MenuItem {
  final String name;
  final String route;
  final List<MenuItem>? children;

  MenuItem(this.name, this.route, {this.children});
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
  MenuItem(companyInfoDisplayName, companyInfoPageRoute),
  MenuItem(usersDisplayName, usersPageRoute),
  MenuItem(vendorsDisplayName, vendorsPageRoute),
  MenuItem(catalogDisplayName, catalogPageRoute),
  MenuItem(discountsDisplayName, discountsPageRoute),
  MenuItem(warehousesDisplayName, warehousesPageRoute),
  MenuItem(productsCameDisplayName, productsCamePageRoute),
  MenuItem(transferPageDisplayName, transferPagePageRoute),
  MenuItem(ordersDisplayName, ordersPageRoute),
  MenuItem(allCashesDisplayName, allCashesPageRoute),
  MenuItem(startingAmountDisplayName, startingAmountPageRoute),
  MenuItem(pkoDisplayName, pkoPageRoute),
  MenuItem(rkoDisplayName, rkoPageRoute),



  
  // Add your admin menu items here
  // MenuItem(
  //   'Основное',
  //   '/main',
  //   children: [
  //     MenuItem('Компания', '/company_info'),
  //     MenuItem('Сотрудники', '/users_screen'),
  //     MenuItem('Поставщики', '/suppliers'),
  //     MenuItem('Клиенты', '/clients'),
  //     MenuItem('Каталог', '/catalog'),
  //     MenuItem('Акции', '/promotions'),
  //   ],
  // ),
  // MenuItem('Склады', '/warehouses', children: [
  //   MenuItem('Все склады', '/warehouses'),
  //   MenuItem('Поступление', '/inventory'),
  //   MenuItem('Перемещение', '/transfers'),
  // ]),
  // MenuItem('Продажа', '/orders', children: [
  //   MenuItem('Список всех заказов', '/orders'),
  // ]),
  // MenuItem('Финансы', '/finances', children: [
  //   MenuItem('Все кассы', '/registers'),
  //   MenuItem('Ввод начальных остатков', '/initial_balance'),
  //   MenuItem('ПКО', '/cash_out'),
  //   MenuItem('РКО', '/cash_in'),
  // ]),
  // MenuItem('Отчеты', '/reports'), // Example for main menu item
];
