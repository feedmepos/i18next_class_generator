import 'package:i18next/i18next.dart';

class I18n {
  I18n(this.i18next);

  final I18Next i18next;

  static I18n of(context) {
    return I18n(I18Next.of(context)!);
  }

  _Bill get bill {
    return _Bill(i18next);
  }

  _Common get common {
    return _Common(i18next);
  }

  _Counter get counter {
    return _Counter(i18next);
  }

  _Device get device {
    return _Device(i18next);
  }

  _Display get display {
    return _Display(i18next);
  }

  _Example get example {
    return _Example(i18next);
  }

  _Inventory get inventory {
    return _Inventory(i18next);
  }

  _Kitchen get kitchen {
    return _Kitchen(i18next);
  }

  _Mall get mall {
    return _Mall(i18next);
  }

  _Marketing get marketing {
    return _Marketing(i18next);
  }

  _Menu get menu {
    return _Menu(i18next);
  }

  _Order get order {
    return _Order(i18next);
  }

  _Payment get payment {
    return _Payment(i18next);
  }

  _Printer get printer {
    return _Printer(i18next);
  }

  _Report get report {
    return _Report(i18next);
  }

  _Restaurant get restaurant {
    return _Restaurant(i18next);
  }

  _System get system {
    return _System(i18next);
  }

  _Table get table {
    return _Table(i18next);
  }

  _Transaction get transaction {
    return _Transaction(i18next);
  }

  _User get user {
    return _User(i18next);
  }
}

class _Bill {
  _Bill(this.i18next);

  final I18Next i18next;

  String get bill {
    return i18next.t('bill:bill');
  }

  String get bill_plural {
    return i18next.t('bill:bill_plural');
  }

  String get billDiscount {
    return i18next.t('bill:billDiscount');
  }

  String get billNo {
    return i18next.t('bill:billNo');
  }

  String get billOpenAt {
    return i18next.t('bill:billOpenAt');
  }

  String get billRemark {
    return i18next.t('bill:billRemark');
  }

  String get billRounding {
    return i18next.t('bill:billRounding');
  }

  String get billRoundingDescription {
    return i18next.t('bill:billRoundingDescription');
  }

  String itemWithIdNotFound(itemId) {
    return i18next.t(
      'bill:itemWithIdNotFound',
      variables: {"itemId": itemId},
    );
  }

  String get otherBills {
    return i18next.t('bill:otherBills');
  }

  String get searchBill {
    return i18next.t('bill:searchBill');
  }

  String get selectBill {
    return i18next.t('bill:selectBill');
  }
}

class _Common {
  _Common(this.i18next);

  final I18Next i18next;

  String get accept {
    return i18next.t('common:accept');
  }

  String actionOnly(object) {
    return i18next.t(
      'common:actionOnly',
      variables: {"object": object},
    );
  }

  String get activate {
    return i18next.t('common:activate');
  }

  String get activity {
    return i18next.t('common:activity');
  }

  String get add {
    return i18next.t('common:add');
  }

  String get addItemRemark {
    return i18next.t('common:addItemRemark');
  }

  String addObject(object) {
    return i18next.t(
      'common:addObject',
      variables: {"object": object},
    );
  }

  String get adjust {
    return i18next.t('common:adjust');
  }

  String get address {
    return i18next.t('common:address');
  }

  String get addon {
    return i18next.t('common:addon');
  }

  String get all {
    return i18next.t('common:all');
  }

  String get amount {
    return i18next.t('common:amount');
  }

  String get apply {
    return i18next.t('common:apply');
  }

  String get april {
    return i18next.t('common:april');
  }

  String get areYouSure {
    return i18next.t('common:areYouSure');
  }

  String get asap {
    return i18next.t('common:asap');
  }

  String get august {
    return i18next.t('common:august');
  }

  String get authCode {
    return i18next.t('common:authCode');
  }

  String get autoApply {
    return i18next.t('common:autoApply');
  }

  String get available {
    return i18next.t('common:available');
  }

  String get averageSpent {
    return i18next.t('common:averageSpent');
  }

  String get balance {
    return i18next.t('common:balance');
  }

  String get buyComboItemsWith {
    return i18next.t('common:buyComboItemsWith');
  }

  String get cancel {
    return i18next.t('common:cancel');
  }

  String get cancelPurchase {
    return i18next.t('common:cancelPurchase');
  }

  String get cancelUpdate {
    return i18next.t('common:cancelUpdate');
  }

  String get card {
    return i18next.t('common:card');
  }

  String get cardNo {
    return i18next.t('common:cardNo');
  }

  String get cashier {
    return i18next.t('common:cashier');
  }

  String get change {
    return i18next.t('common:change');
  }

  String get checklist {
    return i18next.t('common:checklist');
  }

  String get close {
    return i18next.t('common:close');
  }

  String get code {
    return i18next.t('common:code');
  }

  String get confirm {
    return i18next.t('common:confirm');
  }

  String confirmAction(action) {
    return i18next.t(
      'common:confirmAction',
      variables: {"action": action},
    );
  }

  String get confirmation {
    return i18next.t('common:confirmation');
  }

  String get confirmResetNotificationSetting {
    return i18next.t('common:confirmResetNotificationSetting');
  }

  String confirmRemoveObject(object) {
    return i18next.t(
      'common:confirmRemoveObject',
      variables: {"object": object},
    );
  }

  String get createTime {
    return i18next.t('common:createTime');
  }

  String get credit {
    return i18next.t('common:credit');
  }

  String get creditedTo {
    return i18next.t('common:creditedTo');
  }

  String get creditBalance {
    return i18next.t('common:creditBalance');
  }

  String get creditInfo {
    return i18next.t('common:creditInfo');
  }

  String get creditUsed {
    return i18next.t('common:creditUsed');
  }

  String get credits {
    return i18next.t('common:credits');
  }

  String get currentPage {
    return i18next.t('common:currentPage');
  }

  String get currentTime {
    return i18next.t('common:currentTime');
  }

  String get contact {
    return i18next.t('common:contact');
  }

  String get convert {
    return i18next.t('common:convert');
  }

  String get custom {
    return i18next.t('common:custom');
  }

  String get customer {
    return i18next.t('common:customer');
  }

  String get customerInfo {
    return i18next.t('common:customerInfo');
  }

  String get customerProfilePic {
    return i18next.t('common:customerProfilePic');
  }

  String get data {
    return i18next.t('common:data');
  }

  String get dataNotSyncing {
    return i18next.t('common:dataNotSyncing');
  }

  String get dataSyncing {
    return i18next.t('common:dataSyncing');
  }

  String get date {
    return i18next.t('common:date');
  }

  String get day {
    return i18next.t('common:day');
  }

  String get deactivateManualIntegration {
    return i18next.t('common:deactivateManualIntegration');
  }

  String get december {
    return i18next.t('common:december');
  }

  String get deductStockFail {
    return i18next.t('common:deductStockFail');
  }

  String get delivery {
    return i18next.t('common:delivery');
  }

  String get deliveryFee {
    return i18next.t('common:deliveryFee');
  }

  String get deliveryInfo {
    return i18next.t('common:deliveryInfo');
  }

  String get deliveryTime {
    return i18next.t('common:deliveryTime');
  }

  String get disc {
    return i18next.t('common:disc');
  }

  String get discount {
    return i18next.t('common:discount');
  }

  String get discountAmount {
    return i18next.t('common:discountAmount');
  }

  String get download {
    return i18next.t('common:download');
  }

  String get downloadNow {
    return i18next.t('common:downloadNow');
  }

  String get draft {
    return i18next.t('common:draft');
  }

  String drawerRecord(action) {
    return i18next.t(
      'common:drawerRecord',
      variables: {"action": action},
    );
  }

  String get driver {
    return i18next.t('common:driver');
  }

  String get driverInfo {
    return i18next.t('common:driverInfo');
  }

  String get driverInfoUpdated {
    return i18next.t('common:driverInfoUpdated');
  }

  String get driverVehicle {
    return i18next.t('common:driverVehicle');
  }

  String get driverVehicleLicensePlate {
    return i18next.t('common:driverVehicleLicensePlate');
  }

  String get driverVehicleModel {
    return i18next.t('common:driverVehicleModel');
  }

  String get driverVehicleType {
    return i18next.t('common:driverVehicleType');
  }

  String get enter {
    return i18next.t('common:enter');
  }

  String get enterAuthCode {
    return i18next.t('common:enterAuthCode');
  }

  String get enterName {
    return i18next.t('common:enterName');
  }

  String get enterReason {
    return i18next.t('common:enterReason');
  }

  String get enterRemark {
    return i18next.t('common:enterRemark');
  }

  String get excl {
    return i18next.t('common:excl');
  }

  String get failure {
    return i18next.t('common:failure');
  }

  String get february {
    return i18next.t('common:february');
  }

  String get feedmeDelivery {
    return i18next.t('common:feedmeDelivery');
  }

  String get feedmeDeliveryInfo {
    return i18next.t('common:feedmeDeliveryInfo');
  }

  String get filtered {
    return i18next.t('common:filtered');
  }

  String get foc {
    return i18next.t('common:foc');
  }

  String get foodpandaDeliveryFailed {
    return i18next.t('common:foodpandaDeliveryFailed');
  }

  String get fp {
    return i18next.t('common:fp');
  }

  String get free {
    return i18next.t('common:free');
  }

  String get generatedAt {
    return i18next.t('common:generatedAt');
  }

  String get grossTotal {
    return i18next.t('common:grossTotal');
  }

  String get hour {
    return i18next.t('common:hour');
  }

  String get july {
    return i18next.t('common:july');
  }

  String get june {
    return i18next.t('common:june');
  }

  String get image {
    return i18next.t('common:image');
  }

  String get in_ {
    return i18next.t('common:in_');
  }

  String get info {
    return i18next.t('common:info');
  }

  String get inUsed {
    return i18next.t('common:inUsed');
  }

  String get invalid {
    return i18next.t('common:invalid');
  }

  String get invoiceNo {
    return i18next.t('common:invoiceNo');
  }

  String get invite {
    return i18next.t('common:invite');
  }

  String get ipAddress {
    return i18next.t('common:ipAddress');
  }

  String get item {
    return i18next.t('common:item');
  }

  String get item_plural {
    return i18next.t('common:item_plural');
  }

  String get itemCode {
    return i18next.t('common:itemCode');
  }

  String get itemName {
    return i18next.t('common:itemName');
  }

  String get itemPrice {
    return i18next.t('common:itemPrice');
  }

  String get itemRemark {
    return i18next.t('common:itemRemark');
  }

  String get itemTakeaway {
    return i18next.t('common:itemTakeaway');
  }

  String get lastMonth {
    return i18next.t('common:lastMonth');
  }

  String get lastWeek {
    return i18next.t('common:lastWeek');
  }

  String get licensePlate {
    return i18next.t('common:licensePlate');
  }

  String get loading {
    return i18next.t('common:loading');
  }

  String get january {
    return i18next.t('common:january');
  }

  String get march {
    return i18next.t('common:march');
  }

  String get max {
    return i18next.t('common:max');
  }

  String get may {
    return i18next.t('common:may');
  }

  String get memberCardNo {
    return i18next.t('common:memberCardNo');
  }

  String get minimum {
    return i18next.t('common:minimum');
  }

  String get minute {
    return i18next.t('common:minute');
  }

  String get minute_plural {
    return i18next.t('common:minute_plural');
  }

  String get model {
    return i18next.t('common:model');
  }

  String get month {
    return i18next.t('common:month');
  }

  String get more {
    return i18next.t('common:more');
  }

  String get name {
    return i18next.t('common:name');
  }

  String get nettTotal {
    return i18next.t('common:nettTotal');
  }

  String get no {
    return i18next.t('common:no');
  }

  String get noAvailableOption {
    return i18next.t('common:noAvailableOption');
  }

  String get noBindedCard {
    return i18next.t('common:noBindedCard');
  }

  String get noDriver {
    return i18next.t('common:noDriver');
  }

  String get noFoodPandaOrder {
    return i18next.t('common:noFoodPandaOrder');
  }

  String get noItem {
    return i18next.t('common:noItem');
  }

  String get noItemFound {
    return i18next.t('common:noItemFound');
  }

  String get noRecord {
    return i18next.t('common:noRecord');
  }

  String get noNotification {
    return i18next.t('common:noNotification');
  }

  String get noSelectedItem {
    return i18next.t('common:noSelectedItem');
  }

  String get notAvailable {
    return i18next.t('common:notAvailable');
  }

  String get notification {
    return i18next.t('common:notification');
  }

  String get notification_plural {
    return i18next.t('common:notification_plural');
  }

  String notifyFailed(action) {
    return i18next.t(
      'common:notifyFailed',
      variables: {"action": action},
    );
  }

  String notifySuccess(action) {
    return i18next.t(
      'common:notifySuccess',
      variables: {"action": action},
    );
  }

  String get notProvided {
    return i18next.t('common:notProvided');
  }

  String get notSet {
    return i18next.t('common:notSet');
  }

  String get notSyncing {
    return i18next.t('common:notSyncing');
  }

  String get noValue {
    return i18next.t('common:noValue');
  }

  String get numberShort {
    return i18next.t('common:numberShort');
  }

  String get number {
    return i18next.t('common:number');
  }

  String get november {
    return i18next.t('common:november');
  }

  String objectLeft(object) {
    return i18next.t(
      'common:objectLeft',
      variables: {"object": object},
    );
  }

  String objectSelected(object) {
    return i18next.t(
      'common:objectSelected',
      variables: {"object": object},
    );
  }

  String get october {
    return i18next.t('common:october');
  }

  String get openCamera {
    return i18next.t('common:openCamera');
  }

  String get other {
    return i18next.t('common:other');
  }

  String get out {
    return i18next.t('common:out');
  }

  String get pax {
    return i18next.t('common:pax');
  }

  String get paxDescription {
    return i18next.t('common:paxDescription');
  }

  String get phoneNumber {
    return i18next.t('common:phoneNumber');
  }

  String get pickUp {
    return i18next.t('common:pickUp');
  }

  String get pickupPointAddress {
    return i18next.t('common:pickupPointAddress');
  }

  String get pickupPointName {
    return i18next.t('common:pickupPointName');
  }

  String get pickUpRef {
    return i18next.t('common:pickUpRef');
  }

  String plural(count, word) {
    return i18next.t('common:plural', variables: {"word": word}, count: count);
  }

  String plural_plural(count, word) {
    return i18next.t('common:plural_plural',
        variables: {"word": word}, count: count);
  }

  String get poweredByFeedme {
    return i18next.t('common:poweredByFeedme');
  }

  String get preset {
    return i18next.t('common:preset');
  }

  String get presetRemark {
    return i18next.t('common:presetRemark');
  }

  String get price {
    return i18next.t('common:price');
  }

  String get proceed {
    return i18next.t('common:proceed');
  }

  String get processingFee {
    return i18next.t('common:processingFee');
  }

  String get purchase {
    return i18next.t('common:purchase');
  }

  String get qr {
    return i18next.t('common:qr');
  }

  String get qrCode {
    return i18next.t('common:qrCode');
  }

  String get qty {
    return i18next.t('common:qty');
  }

  String get qty_uppercase {
    return i18next.t('common:qty_uppercase');
  }

  String get quantity {
    return i18next.t('common:quantity');
  }

  String get reason {
    return i18next.t('common:reason');
  }

  String get receipt {
    return i18next.t('common:receipt');
  }

  String get receiptRate {
    return i18next.t('common:receiptRate');
  }

  String get receiptVisit {
    return i18next.t('common:receiptVisit');
  }

  String get recommendedSize {
    return i18next.t('common:recommendedSize');
  }

  String get record {
    return i18next.t('common:record');
  }

  String get reference {
    return i18next.t('common:reference');
  }

  String get refresh {
    return i18next.t('common:refresh');
  }

  String get refund {
    return i18next.t('common:refund');
  }

  String get refund_uppercase {
    return i18next.t('common:refund_uppercase');
  }

  String get refunded {
    return i18next.t('common:refunded');
  }

  String get reject {
    return i18next.t('common:reject');
  }

  String get remark {
    return i18next.t('common:remark');
  }

  String get remove {
    return i18next.t('common:remove');
  }

  String removeObject(object) {
    return i18next.t(
      'common:removeObject',
      variables: {"object": object},
    );
  }

  String get required {
    return i18next.t('common:required');
  }

  String get reset {
    return i18next.t('common:reset');
  }

  String get resetNotificationSetting {
    return i18next.t('common:resetNotificationSetting');
  }

  String get rewards {
    return i18next.t('common:rewards');
  }

  String get rounding {
    return i18next.t('common:rounding');
  }

  String get save {
    return i18next.t('common:save');
  }

  String get scan {
    return i18next.t('common:scan');
  }

  String get scanning {
    return i18next.t('common:scanning');
  }

  String get scanQrCode {
    return i18next.t('common:scanQrCode');
  }

  String get search {
    return i18next.t('common:search');
  }

  String get select {
    return i18next.t('common:select');
  }

  String get selectAll {
    return i18next.t('common:selectAll');
  }

  String get selected {
    return i18next.t('common:selected');
  }

  String get send {
    return i18next.t('common:send');
  }

  String get sendBy {
    return i18next.t('common:sendBy');
  }

  String sendItem(count) {
    return i18next.t('common:sendItem', count: count);
  }

  String sendItem_plural(count) {
    return i18next.t('common:sendItem_plural', count: count);
  }

  String get september {
    return i18next.t('common:september');
  }

  String get setting {
    return i18next.t('common:setting');
  }

  String get show {
    return i18next.t('common:show');
  }

  String get showLess {
    return i18next.t('common:showLess');
  }

  String get showMore {
    return i18next.t('common:showMore');
  }

  String get slot {
    return i18next.t('common:slot');
  }

  String get startScanning {
    return i18next.t('common:startScanning');
  }

  String get subitem {
    return i18next.t('common:subitem');
  }

  String get subtotal {
    return i18next.t('common:subtotal');
  }

  String get syncing {
    return i18next.t('common:syncing');
  }

  String get system {
    return i18next.t('common:system');
  }

  String get takeaway {
    return i18next.t('common:takeaway');
  }

  String get thisMonth {
    return i18next.t('common:thisMonth');
  }

  String get thisWeek {
    return i18next.t('common:thisWeek');
  }

  String get time {
    return i18next.t('common:time');
  }

  String get timeSlot {
    return i18next.t('common:timeSlot');
  }

  String get title {
    return i18next.t('common:title');
  }

  String get to {
    return i18next.t('common:to');
  }

  String get to_uppercase {
    return i18next.t('common:to_uppercase');
  }

  String get today {
    return i18next.t('common:today');
  }

  String get total {
    return i18next.t('common:total');
  }

  String get totalPage {
    return i18next.t('common:totalPage');
  }

  String get unknownChannel {
    return i18next.t('common:unknownChannel');
  }

  String get update {
    return i18next.t('common:update');
  }

  String get updateDeliveryInfo {
    return i18next.t('common:updateDeliveryInfo');
  }

  String get updateItemRemark {
    return i18next.t('common:updateItemRemark');
  }

  String get updatePrice {
    return i18next.t('common:updatePrice');
  }

  String get updateRemark {
    return i18next.t('common:updateRemark');
  }

  String updateObject(object) {
    return i18next.t(
      'common:updateObject',
      variables: {"object": object},
    );
  }

  String get updateQuantity {
    return i18next.t('common:updateQuantity');
  }

  String get updateValue {
    return i18next.t('common:updateValue');
  }

  String get upload {
    return i18next.t('common:upload');
  }

  String get username {
    return i18next.t('common:username');
  }

  String get validateCardNo {
    return i18next.t('common:validateCardNo');
  }

  String get validateIPAddress {
    return i18next.t('common:validateIPAddress');
  }

  String validateMax(max) {
    return i18next.t(
      'common:validateMax',
      variables: {"max": max},
    );
  }

  String validateMin(min) {
    return i18next.t(
      'common:validateMin',
      variables: {"min": min},
    );
  }

  String get validateName {
    return i18next.t('common:validateName');
  }

  String get validateQrCode {
    return i18next.t('common:validateQrCode');
  }

  String get validateReason {
    return i18next.t('common:validateReason');
  }

  String get validateReference {
    return i18next.t('common:validateReference');
  }

  String get validateRemark {
    return i18next.t('common:validateRemark');
  }

  String get validUntil {
    return i18next.t('common:validUntil');
  }

  String get vehicle {
    return i18next.t('common:vehicle');
  }

  String get vehicleType {
    return i18next.t('common:vehicleType');
  }

  String get viewDetail {
    return i18next.t('common:viewDetail');
  }

  String get viewHistory {
    return i18next.t('common:viewHistory');
  }

  String get waitingForCustomerToScan {
    return i18next.t('common:waitingForCustomerToScan');
  }

  String get windowsNotSupported {
    return i18next.t('common:windowsNotSupported');
  }

  String get withTax {
    return i18next.t('common:withTax');
  }

  String get voided {
    return i18next.t('common:voided');
  }

  String get yesterday {
    return i18next.t('common:yesterday');
  }

  String get zeroRinggit {
    return i18next.t('common:zeroRinggit');
  }
}

class _CounterNested {
  _CounterNested(this.i18next);

  final I18Next i18next;

  String get nestedKey1 {
    return i18next.t('counter:nested.nestedKey1');
  }

  String get nestedKey2 {
    return i18next.t('counter:nested.nestedKey2');
  }
}

class _Counter {
  _Counter(this.i18next);

  final I18Next i18next;

  String get base {
    return i18next.t('counter:base');
  }

  String interpolation(object) {
    return i18next.t(
      'counter:interpolation',
      variables: {"object": object},
    );
  }

  String interpolationNested(object) {
    return i18next.t(
      'counter:interpolationNested',
      variables: {"object": object},
    );
  }

  String formatting(word) {
    return i18next.t(
      'counter:formatting',
      variables: {"word": word},
    );
  }

  String get nesting {
    return i18next.t('counter:nesting');
  }

  String get nestingOtherModule {
    return i18next.t('counter:nestingOtherModule');
  }

  String item(count) {
    return i18next.t('counter:item', count: count);
  }

  String item_plural(count) {
    return i18next.t('counter:item_plural', count: count);
  }

  String plural(count, object) {
    return i18next.t('counter:plural',
        variables: {"object": object}, count: count);
  }

  String plural_plural(count, object) {
    return i18next.t('counter:plural_plural',
        variables: {"object": object}, count: count);
  }

  _CounterNested get nested {
    return _CounterNested(i18next);
  }

  String nestingNested(surprise_object) {
    return i18next.t(
      'counter:nestingNested',
      variables: {"surprise_object": surprise_object},
    );
  }
}

class _Device {
  _Device(this.i18next);

  final I18Next i18next;

  String get addDevice {
    return i18next.t('device:addDevice');
  }

  String get cashIn {
    return i18next.t('device:cashIn');
  }

  String get cashOut {
    return i18next.t('device:cashOut');
  }

  String get closeApp {
    return i18next.t('device:closeApp');
  }

  String get closeCounter {
    return i18next.t('device:closeCounter');
  }

  String get confirmCloseApp {
    return i18next.t('device:confirmCloseApp');
  }

  String confirmInstallVersion(version, releaseNote) {
    return i18next.t(
      'device:confirmInstallVersion',
      variables: {"version": version, "releaseNote": releaseNote},
    );
  }

  String get counter {
    return i18next.t('device:counter');
  }

  String get counterRecordNotFound {
    return i18next.t('device:counterRecordNotFound');
  }

  String get device {
    return i18next.t('device:device');
  }

  String get deviceLinkingNotice {
    return i18next.t('device:deviceLinkingNotice');
  }

  String get deviceName {
    return i18next.t('device:deviceName');
  }

  String get deviceType {
    return i18next.t('device:deviceType');
  }

  String get deviceUpdate {
    return i18next.t('device:deviceUpdate');
  }

  String get downloadingUpdate {
    return i18next.t('device:downloadingUpdate');
  }

  String downloadingVersion(version) {
    return i18next.t(
      'device:downloadingVersion',
      variables: {"version": version},
    );
  }

  String get drawer {
    return i18next.t('device:drawer');
  }

  String get install {
    return i18next.t('device:install');
  }

  String get installLater {
    return i18next.t('device:installLater');
  }

  String get installNow {
    return i18next.t('device:installNow');
  }

  String get invalidCounterRecordTime {
    return i18next.t('device:invalidCounterRecordTime');
  }

  String get linkSubpos {
    return i18next.t('device:linkSubpos');
  }

  String get mainDevice {
    return i18next.t('device:mainDevice');
  }

  String get mainPOS {
    return i18next.t('device:mainPOS');
  }

  String get newUpdateAvailable {
    return i18next.t('device:newUpdateAvailable');
  }

  String get openCounter {
    return i18next.t('device:openCounter');
  }

  String get openCounterToOpenDrawer {
    return i18next.t('device:openCounterToOpenDrawer');
  }

  String get openDrawer {
    return i18next.t('device:openDrawer');
  }

  String get orderStation {
    return i18next.t('device:orderStation');
  }

  String get otherDevice {
    return i18next.t('device:otherDevice');
  }

  String get preparingUpdate {
    return i18next.t('device:preparingUpdate');
  }

  String get softwareInfo {
    return i18next.t('device:softwareInfo');
  }

  String get subPOS {
    return i18next.t('device:subPOS');
  }

  String get systemUpdate {
    return i18next.t('device:systemUpdate');
  }

  String get updateDevice {
    return i18next.t('device:updateDevice');
  }

  String get updateDeviceName {
    return i18next.t('device:updateDeviceName');
  }

  String get updateMainDevice {
    return i18next.t('device:updateMainDevice');
  }

  String get updateReady {
    return i18next.t('device:updateReady');
  }

  String get updateReadyToInstall {
    return i18next.t('device:updateReadyToInstall');
  }

  String get validateLinkSubpos {
    return i18next.t('device:validateLinkSubpos');
  }

  String get verifyDownloaded {
    return i18next.t('device:verifyDownloaded');
  }

  String get version {
    return i18next.t('device:version');
  }
}

class _Display {
  _Display(this.i18next);

  final I18Next i18next;

  String get customerDisplay {
    return i18next.t('display:customerDisplay');
  }

  String get darkMode {
    return i18next.t('display:darkMode');
  }

  String get display {
    return i18next.t('display:display');
  }

  String get externalDisplay {
    return i18next.t('display:externalDisplay');
  }

  String get language {
    return i18next.t('display:language');
  }

  String get ledPriceDisplay {
    return i18next.t('display:ledPriceDisplay');
  }

  String get lightMode {
    return i18next.t('display:lightMode');
  }

  String get mainDisplay {
    return i18next.t('display:mainDisplay');
  }
}

class _ExampleNested {
  _ExampleNested(this.i18next);

  final I18Next i18next;

  String get nestedKey1 {
    return i18next.t('example:nested.nestedKey1');
  }

  String get nestedKey2 {
    return i18next.t('example:nested.nestedKey2');
  }
}

class _Example {
  _Example(this.i18next);

  final I18Next i18next;

  String get base {
    return i18next.t('example:base');
  }

  String interpolation(object) {
    return i18next.t(
      'example:interpolation',
      variables: {"object": object},
    );
  }

  String interpolationNested(object) {
    return i18next.t(
      'example:interpolationNested',
      variables: {"object": object},
    );
  }

  String formatting(word) {
    return i18next.t(
      'example:formatting',
      variables: {"word": word},
    );
  }

  String get nesting {
    return i18next.t('example:nesting');
  }

  String item(count) {
    return i18next.t('example:item', count: count);
  }

  String item_plural(count) {
    return i18next.t('example:item_plural', count: count);
  }

  String plural(count, object) {
    return i18next.t('example:plural',
        variables: {"object": object}, count: count);
  }

  String plural_plural(count, object) {
    return i18next.t('example:plural_plural',
        variables: {"object": object}, count: count);
  }

  _ExampleNested get nested {
    return _ExampleNested(i18next);
  }

  String nestingNested(surprise_object) {
    return i18next.t(
      'example:nestingNested',
      variables: {"surprise_object": surprise_object},
    );
  }
}

class _Inventory {
  _Inventory(this.i18next);

  final I18Next i18next;

  String get adjustIngredient {
    return i18next.t('inventory:adjustIngredient');
  }

  String get convertIngredient {
    return i18next.t('inventory:convertIngredient');
  }

  String get ingredient {
    return i18next.t('inventory:ingredient');
  }

  String get inventory {
    return i18next.t('inventory:inventory');
  }

  String get inventoryPurchase {
    return i18next.t('inventory:inventoryPurchase');
  }

  String get returnStock {
    return i18next.t('inventory:returnStock');
  }

  String get searchIngredient {
    return i18next.t('inventory:searchIngredient');
  }

  String get sharedStock {
    return i18next.t('inventory:sharedStock');
  }

  String get stock {
    return i18next.t('inventory:stock');
  }

  String get updateAdjustmentRemark {
    return i18next.t('inventory:updateAdjustmentRemark');
  }

  String get updateStock {
    return i18next.t('inventory:updateStock');
  }
}

class _Kitchen {
  _Kitchen(this.i18next);

  final I18Next i18next;

  String get averagePreparationTime {
    return i18next.t('kitchen:averagePreparationTime');
  }

  String averagePreparationTimeDescription(min) {
    return i18next.t(
      'kitchen:averagePreparationTimeDescription',
      variables: {"min": min},
    );
  }

  String averagePreparationTimeDescription_plural(min) {
    return i18next.t(
      'kitchen:averagePreparationTimeDescription_plural',
      variables: {"min": min},
    );
  }

  String get kitchen {
    return i18next.t('kitchen:kitchen');
  }
}

class _Mall {
  _Mall(this.i18next);

  final I18Next i18next;

  String get mall {
    return i18next.t('mall:mall');
  }

  String get mallIntegration {
    return i18next.t('mall:mallIntegration');
  }
}

class _Marketing {
  _Marketing(this.i18next);

  final I18Next i18next;

  String get lastTopup {
    return i18next.t('marketing:lastTopup');
  }

  String get lastVisit {
    return i18next.t('marketing:lastVisit');
  }

  String get level {
    return i18next.t('marketing:level');
  }

  String get totalTopup {
    return i18next.t('marketing:totalTopup');
  }

  String get totalVisit {
    return i18next.t('marketing:totalVisit');
  }

  String get member {
    return i18next.t('marketing:member');
  }

  String get memberCard {
    return i18next.t('marketing:memberCard');
  }

  String get memberCredit {
    return i18next.t('marketing:memberCredit');
  }

  String memberNotFound(phoneNo) {
    return i18next.t(
      'marketing:memberNotFound',
      variables: {"phoneNo": phoneNo},
    );
  }

  String get membership {
    return i18next.t('marketing:membership');
  }

  String get membershipNotActivatedError {
    return i18next.t('marketing:membershipNotActivatedError');
  }

  String get promotion {
    return i18next.t('marketing:promotion');
  }

  String get scanMemberCard {
    return i18next.t('marketing:scanMemberCard');
  }

  String get updateMemberCard {
    return i18next.t('marketing:updateMemberCard');
  }

  String get voucher {
    return i18next.t('marketing:voucher');
  }
}

class _Menu {
  _Menu(this.i18next);

  final I18Next i18next;

  String get addon {
    return i18next.t('menu:addon');
  }

  String get addonGroup {
    return i18next.t('menu:addonGroup');
  }

  String get category {
    return i18next.t('menu:category');
  }

  String get customAddon {
    return i18next.t('menu:customAddon');
  }

  String get internalName {
    return i18next.t('menu:internalName');
  }

  String get menu {
    return i18next.t('menu:menu');
  }

  String get noInternalName {
    return i18next.t('menu:noInternalName');
  }

  String get posOnly {
    return i18next.t('menu:posOnly');
  }

  String priceForUnit(unit) {
    return i18next.t(
      'menu:priceForUnit',
      variables: {"unit": unit},
    );
  }

  String get product {
    return i18next.t('menu:product');
  }

  String get selectCategory {
    return i18next.t('menu:selectCategory');
  }

  String get searchMenu {
    return i18next.t('menu:searchMenu');
  }

  String get unitQuantity {
    return i18next.t('menu:unitQuantity');
  }
}

class _Order {
  _Order(this.i18next);

  final I18Next i18next;

  String get addNewBill {
    return i18next.t('order:addNewBill');
  }

  String get autoAcceptOrderFail {
    return i18next.t('order:autoAcceptOrderFail');
  }

  String get billWithPaymentCannotOrder {
    return i18next.t('order:billWithPaymentCannotOrder');
  }

  String get callDriver {
    return i18next.t('order:callDriver');
  }

  String get cancelPayment {
    return i18next.t('order:cancelPayment');
  }

  String get cancelSplitPayment {
    return i18next.t('order:cancelSplitPayment');
  }

  String get checkout {
    return i18next.t('order:checkout');
  }

  String get closeBill {
    return i18next.t('order:closeBill');
  }

  String get confirmApplyDiscount {
    return i18next.t('order:confirmApplyDiscount');
  }

  String get confirmApplyMembership {
    return i18next.t('order:confirmApplyMembership');
  }

  String get confirmRemoveMembership {
    return i18next.t('order:confirmRemoveMembership');
  }

  String confirmSendDraftItem(count) {
    return i18next.t('order:confirmSendDraftItem', count: count);
  }

  String confirmSendDraftItem_plural(count) {
    return i18next.t('order:confirmSendDraftItem_plural', count: count);
  }

  String get confirmVoidBill {
    return i18next.t('order:confirmVoidBill');
  }

  String get deliveryAt {
    return i18next.t('order:deliveryAt');
  }

  String get discountApplied {
    return i18next.t('order:discountApplied');
  }

  String get draftItem {
    return i18next.t('order:draftItem');
  }

  String get draftItem_plural {
    return i18next.t('order:draftItem_plural');
  }

  String driverInfoChanged(slot) {
    return i18next.t(
      'order:driverInfoChanged',
      variables: {"slot": slot},
    );
  }

  String get exitOrder {
    return i18next.t('order:exitOrder');
  }

  String feedmeDeliveryOrderReceived(slot) {
    return i18next.t(
      'order:feedmeDeliveryOrderReceived',
      variables: {"slot": slot},
    );
  }

  String feedmeOrderAutoCalledDriver(slot) {
    return i18next.t(
      'order:feedmeOrderAutoCalledDriver',
      variables: {"slot": slot},
    );
  }

  String get foodpandaOrder {
    return i18next.t('order:foodpandaOrder');
  }

  String foodpandaOrderAccepted(shortCode) {
    return i18next.t(
      'order:foodpandaOrderAccepted',
      variables: {"shortCode": shortCode},
    );
  }

  String get foodpandaOrderRejected {
    return i18next.t('order:foodpandaOrderRejected');
  }

  String foodpandaOrderAutoCalledDriver(slot) {
    return i18next.t(
      'order:foodpandaOrderAutoCalledDriver',
      variables: {"slot": slot},
    );
  }

  String foodpandaOrderCancelled(orderId) {
    return i18next.t(
      'order:foodpandaOrderCancelled',
      variables: {"orderId": orderId},
    );
  }

  String get move {
    return i18next.t('order:move');
  }

  String get multipleBillsConfirmation {
    return i18next.t('order:multipleBillsConfirmation');
  }

  String needToBePrepared(total) {
    return i18next.t(
      'order:needToBePrepared',
      variables: {"total": total},
    );
  }

  String get newFoodpandaOrder {
    return i18next.t('order:newFoodpandaOrder');
  }

  String get newFoodpandaOrderReceived {
    return i18next.t('order:newFoodpandaOrderReceived');
  }

  String get newOrder {
    return i18next.t('order:newOrder');
  }

  String newOrderDynamic(slot) {
    return i18next.t(
      'order:newOrderDynamic',
      variables: {"slot": slot},
    );
  }

  String get newOrderReceived {
    return i18next.t('order:newOrderReceived');
  }

  String get nextBill {
    return i18next.t('order:nextBill');
  }

  String get openCounterToOrder {
    return i18next.t('order:openCounterToOrder');
  }

  String get openPaxDialogDescription {
    return i18next.t('order:openPaxDialogDescription');
  }

  String get order {
    return i18next.t('order:order');
  }

  String get order_uppercase {
    return i18next.t('order:order_uppercase');
  }

  String get orderCode {
    return i18next.t('order:orderCode');
  }

  String orderDynamic(slot) {
    return i18next.t(
      'order:orderDynamic',
      variables: {"slot": slot},
    );
  }

  String createBillFail(code) {
    return i18next.t(
      'order:createBillFail',
      variables: {"code": code},
    );
  }

  String fpFailAcceptOrder(shortCode) {
    return i18next.t(
      'order:fpFailAcceptOrder',
      variables: {"shortCode": shortCode},
    );
  }

  String fpOrderExpired(shortCode) {
    return i18next.t(
      'order:fpOrderExpired',
      variables: {"shortCode": shortCode},
    );
  }

  String get orderNumber {
    return i18next.t('order:orderNumber');
  }

  String get orderPageLayout {
    return i18next.t('order:orderPageLayout');
  }

  String get orderRejected {
    return i18next.t('order:orderRejected');
  }

  String get orderRemark {
    return i18next.t('order:orderRemark');
  }

  String get pickupAt {
    return i18next.t('order:pickupAt');
  }

  String get preOrderReminder {
    return i18next.t('order:preOrderReminder');
  }

  String get printBillAction {
    return i18next.t('order:printBillAction');
  }

  String get rejectFeedmeDeliveryFail {
    return i18next.t('order:rejectFeedmeDeliveryFail');
  }

  String get rejectOrder {
    return i18next.t('order:rejectOrder');
  }

  String get rejectOrderFail {
    return i18next.t('order:rejectOrderFail');
  }

  String get rejectReason {
    return i18next.t('order:rejectReason');
  }

  String get remoteDelivery {
    return i18next.t('order:remoteDelivery');
  }

  String get remoteFoodpandaDelivery {
    return i18next.t('order:remoteFoodpandaDelivery');
  }

  String get remotePickup {
    return i18next.t('order:remotePickup');
  }

  String get remoteQrCode {
    return i18next.t('order:remoteQrCode');
  }

  String get removeDiscount {
    return i18next.t('order:removeDiscount');
  }

  String get selectPax {
    return i18next.t('order:selectPax');
  }

  String get selectRejectReason {
    return i18next.t('order:selectRejectReason');
  }

  String get sendKitchenAction {
    return i18next.t('order:sendKitchenAction');
  }

  String get showNewOrderAfterSale {
    return i18next.t('order:showNewOrderAfterSale');
  }

  String get showProductImage {
    return i18next.t('order:showProductImage');
  }

  String get splitAction {
    return i18next.t('order:splitAction');
  }

  String get splitPayment {
    return i18next.t('order:splitPayment');
  }

  String get stayOnBillAfterSend {
    return i18next.t('order:stayOnBillAfterSend');
  }

  String validateAddonGroupStackable(name) {
    return i18next.t(
      'order:validateAddonGroupStackable',
      variables: {"name": name},
    );
  }

  String get validateSendDraftItem {
    return i18next.t('order:validateSendDraftItem');
  }

  String get viewFoodpandaOrder {
    return i18next.t('order:viewFoodpandaOrder');
  }

  String get voidAction {
    return i18next.t('order:voidAction');
  }

  String get voidBill {
    return i18next.t('order:voidBill');
  }

  String get voidOrder {
    return i18next.t('order:voidOrder');
  }
}

class _Payment {
  _Payment(this.i18next);

  final I18Next i18next;

  String get addPaymentMethod {
    return i18next.t('payment:addPaymentMethod');
  }

  String get addCustomPaymentMethod {
    return i18next.t('payment:addCustomPaymentMethod');
  }

  String get activatePaymentMethod {
    return i18next.t('payment:activatePaymentMethod');
  }

  String get cash {
    return i18next.t('payment:cash');
  }

  String get customPaymentMethod {
    return i18next.t('payment:customPaymentMethod');
  }

  String get ePayment {
    return i18next.t('payment:ePayment');
  }

  String get noCustomPaymentMethod {
    return i18next.t('payment:noCustomPaymentMethod');
  }

  String get noPaymentMethod {
    return i18next.t('payment:noPaymentMethod');
  }

  String get payment {
    return i18next.t('payment:payment');
  }

  String get paymentMethod {
    return i18next.t('payment:paymentMethod');
  }

  String get presetPaymentMethod {
    return i18next.t('payment:presetPaymentMethod');
  }

  String get selectPaymentMethod {
    return i18next.t('payment:selectPaymentMethod');
  }

  String get updateCustomPaymentMethod {
    return i18next.t('payment:updateCustomPaymentMethod');
  }
}

class _PrinterPaperConfigDoubleNestedThirdNested {
  _PrinterPaperConfigDoubleNestedThirdNested(this.i18next);

  final I18Next i18next;

  String get c {
    return i18next.t('printer:paperConfig.doubleNested.thirdNested.c');
  }
}

class _PrinterPaperConfigDoubleNested {
  _PrinterPaperConfigDoubleNested(this.i18next);

  final I18Next i18next;

  _PrinterPaperConfigDoubleNestedThirdNested get thirdNested {
    return _PrinterPaperConfigDoubleNestedThirdNested(i18next);
  }

  String get a {
    return i18next.t('printer:paperConfig.doubleNested.a');
  }

  String b(count) {
    return i18next.t('printer:paperConfig.doubleNested.b', count: count);
  }
}

class _PrinterPaperConfig {
  _PrinterPaperConfig(this.i18next);

  final I18Next i18next;

  String width(value) {
    return i18next.t(
      'printer:paperConfig.width',
      variables: {"value": value},
    );
  }

  String get height {
    return i18next.t('printer:paperConfig.height');
  }

  String get xReference {
    return i18next.t('printer:paperConfig.xReference');
  }

  String get yReference {
    return i18next.t('printer:paperConfig.yReference');
  }

  _PrinterPaperConfigDoubleNested get doubleNested {
    return _PrinterPaperConfigDoubleNested(i18next);
  }
}

class _Printer {
  _Printer(this.i18next);

  final I18Next i18next;

  String get addPrinter {
    return i18next.t('printer:addPrinter');
  }

  String get orderTemplate {
    return i18next.t('printer:orderTemplate');
  }

  String get print {
    return i18next.t('printer:print');
  }

  _PrinterPaperConfig get paperConfig {
    return _PrinterPaperConfig(i18next);
  }

  String get printer {
    return i18next.t('printer:printer');
  }

  String get printerConnectFail {
    return i18next.t('printer:printerConnectFail');
  }

  String get printerName {
    return i18next.t('printer:printerName');
  }

  String get printReceipt {
    return i18next.t('printer:printReceipt');
  }

  String get printReceiptAfterPayment {
    return i18next.t('printer:printReceiptAfterPayment');
  }

  String get printRecordAfterDrawer {
    return i18next.t('printer:printRecordAfterDrawer');
  }

  String get printReport {
    return i18next.t('printer:printReport');
  }

  String get pulseDrawer {
    return i18next.t('printer:pulseDrawer');
  }

  String get removePrinter {
    return i18next.t('printer:removePrinter');
  }

  String get stickerTemplate {
    return i18next.t('printer:stickerTemplate');
  }

  String get tapToPrint {
    return i18next.t('printer:tapToPrint');
  }
}

class _Report {
  _Report(this.i18next);

  final I18Next i18next;

  String get report {
    return i18next.t('report:report');
  }
}

class _Restaurant {
  _Restaurant(this.i18next);

  final I18Next i18next;

  String get closeSaleTime {
    return i18next.t('restaurant:closeSaleTime');
  }

  String get dineIn {
    return i18next.t('restaurant:dineIn');
  }

  String get license {
    return i18next.t('restaurant:license');
  }

  String get licenseExpireAt {
    return i18next.t('restaurant:licenseExpireAt');
  }

  String licenseReminder(date, count) {
    return i18next.t('restaurant:licenseReminder',
        variables: {"date": date}, count: count);
  }

  String licenseReminder_plural(date, count) {
    return i18next.t('restaurant:licenseReminder_plural',
        variables: {"date": date}, count: count);
  }

  String get licenseExpiry {
    return i18next.t('restaurant:licenseExpiry');
  }

  String get operation {
    return i18next.t('restaurant:operation');
  }

  String get operationMode {
    return i18next.t('restaurant:operationMode');
  }

  String get payFirst {
    return i18next.t('restaurant:payFirst');
  }

  String get payLater {
    return i18next.t('restaurant:payLater');
  }

  String get restaurant {
    return i18next.t('restaurant:restaurant');
  }

  String get restaurantName {
    return i18next.t('restaurant:restaurantName');
  }
}

class _System {
  _System(this.i18next);

  final I18Next i18next;

  String get requestingPermissions {
    return i18next.t('system:requestingPermissions');
  }

  String permissionsDenied(permissions) {
    return i18next.t(
      'system:permissionsDenied',
      variables: {"permissions": permissions},
    );
  }

  String get verifyDeviceTime {
    return i18next.t('system:verifyDeviceTime');
  }

  String get loadingNotificationModule {
    return i18next.t('system:loadingNotificationModule');
  }

  String get loadLicenseInfo {
    return i18next.t('system:loadLicenseInfo');
  }

  String get deviceAlreadyRemoved {
    return i18next.t('system:deviceAlreadyRemoved');
  }

  String get differentMachineID {
    return i18next.t('system:differentMachineID');
  }

  String get licenseHasExpired {
    return i18next.t('system:licenseHasExpired');
  }

  String get connectToDatabase {
    return i18next.t('system:connectToDatabase');
  }

  String get startFirstSync {
    return i18next.t('system:startFirstSync');
  }

  String get optimizeDB {
    return i18next.t('system:optimizeDB');
  }

  String get updateSubPosInfo {
    return i18next.t('system:updateSubPosInfo');
  }

  String get setSubPosInfo {
    return i18next.t('system:setSubPosInfo');
  }

  String get validateCorrectMainPosDB {
    return i18next.t('system:validateCorrectMainPosDB');
  }

  String get contentNotFound {
    return i18next.t('system:contentNotFound');
  }

  String get validateSubPosVer {
    return i18next.t('system:validateSubPosVer');
  }

  String subPosVerMismatch(version, minVersion) {
    return i18next.t(
      'system:subPosVerMismatch',
      variables: {"version": version, "minVersion": minVersion},
    );
  }

  String get createDefaultDoc {
    return i18next.t('system:createDefaultDoc');
  }

  String get preparingData {
    return i18next.t('system:preparingData');
  }

  String get validateMachineCounter {
    return i18next.t('system:validateMachineCounter');
  }

  String get machineCounterNotFound {
    return i18next.t('system:machineCounterNotFound');
  }

  String get validateData {
    return i18next.t('system:validateData');
  }

  String get startHeartbeat {
    return i18next.t('system:startHeartbeat');
  }

  String get startBackgroundSync {
    return i18next.t('system:startBackgroundSync');
  }

  String get closeCounter {
    return i18next.t('system:closeCounter');
  }

  String get settingUpDisplay {
    return i18next.t('system:settingUpDisplay');
  }

  String get settingUpPrinter {
    return i18next.t('system:settingUpPrinter');
  }

  String get checkingForMainUpdates {
    return i18next.t('system:checkingForMainUpdates');
  }

  String get verifyUser {
    return i18next.t('system:verifyUser');
  }

  String get noUserFound {
    return i18next.t('system:noUserFound');
  }

  String get handleRemoteOrder {
    return i18next.t('system:handleRemoteOrder');
  }

  String get fetchFoodpandaSetting {
    return i18next.t('system:fetchFoodpandaSetting');
  }

  String get checkingPreorder {
    return i18next.t('system:checkingPreorder');
  }

  String get preparingSecondaryDisplay {
    return i18next.t('system:preparingSecondaryDisplay');
  }

  String get initialTask {
    return i18next.t('system:initialTask');
  }

  String get initiateModule {
    return i18next.t('system:initiateModule');
  }

  String get freshPOS {
    return i18next.t('system:freshPOS');
  }

  String get mainCounterMissing {
    return i18next.t('system:mainCounterMissing');
  }
}

class _Table {
  _Table(this.i18next);

  final I18Next i18next;

  String get addTableLayout {
    return i18next.t('table:addTableLayout');
  }

  String get linkTable {
    return i18next.t('table:linkTable');
  }

  String get noLinkedTable {
    return i18next.t('table:noLinkedTable');
  }

  String get noTable {
    return i18next.t('table:noTable');
  }

  String get removeTable {
    return i18next.t('table:removeTable');
  }

  String get removeTableLayout {
    return i18next.t('table:removeTableLayout');
  }

  String get table {
    return i18next.t('table:table');
  }

  String get table_uppercase {
    return i18next.t('table:table_uppercase');
  }

  String get tableLayout {
    return i18next.t('table:tableLayout');
  }

  String get updateTableLayout {
    return i18next.t('table:updateTableLayout');
  }
}

class _Transaction {
  _Transaction(this.i18next);

  final I18Next i18next;

  String get memberPurchase {
    return i18next.t('transaction:memberPurchase');
  }

  String get noRefundRecord {
    return i18next.t('transaction:noRefundRecord');
  }

  String get openCounterToRefund {
    return i18next.t('transaction:openCounterToRefund');
  }

  String get reasonToRefund {
    return i18next.t('transaction:reasonToRefund');
  }

  String get refund {
    return i18next.t('transaction:refund');
  }

  String get refundAmount {
    return i18next.t('transaction:refundAmount');
  }

  String get refundBy {
    return i18next.t('transaction:refundBy');
  }

  String refundObject(object) {
    return i18next.t(
      'transaction:refundObject',
      variables: {"object": object},
    );
  }

  String get refundRecord {
    return i18next.t('transaction:refundRecord');
  }

  String get refundType {
    return i18next.t('transaction:refundType');
  }

  String get selectRefundType {
    return i18next.t('transaction:selectRefundType');
  }

  String get searchTransaction {
    return i18next.t('transaction:searchTransaction');
  }

  String get transaction {
    return i18next.t('transaction:transaction');
  }
}

class _User {
  _User(this.i18next);

  final I18Next i18next;

  String get addEmployee {
    return i18next.t('user:addEmployee');
  }

  String get addRole {
    return i18next.t('user:addRole');
  }

  String get admin {
    return i18next.t('user:admin');
  }

  String get cannotChangeLastAdminRole {
    return i18next.t('user:cannotChangeLastAdminRole');
  }

  String get cannotRemoveLastAdmin {
    return i18next.t('user:cannotRemoveLastAdmin');
  }

  String get clockIn {
    return i18next.t('user:clockIn');
  }

  String get clocking {
    return i18next.t('user:clocking');
  }

  String get clockOut {
    return i18next.t('user:clockOut');
  }

  String confirmClockIn(name) {
    return i18next.t(
      'user:confirmClockIn',
      variables: {"name": name},
    );
  }

  String confirmClockOut(name) {
    return i18next.t(
      'user:confirmClockOut',
      variables: {"name": name},
    );
  }

  String get employee {
    return i18next.t('user:employee');
  }

  String get enterPasscode {
    return i18next.t('user:enterPasscode');
  }

  String get faceId {
    return i18next.t('user:faceId');
  }

  String greeting(name) {
    return i18next.t(
      'user:greeting',
      variables: {"name": name},
    );
  }

  String get login {
    return i18next.t('user:login');
  }

  String get logout {
    return i18next.t('user:logout');
  }

  String get invalidPasscode {
    return i18next.t('user:invalidPasscode');
  }

  String get noOffDutyEmployee {
    return i18next.t('user:noOffDutyEmployee');
  }

  String get noOnDutyEmployee {
    return i18next.t('user:noOnDutyEmployee');
  }

  String get noPermission {
    return i18next.t('user:noPermission');
  }

  String get noUser {
    return i18next.t('user:noUser');
  }

  String get offDuty {
    return i18next.t('user:offDuty');
  }

  String get onDuty {
    return i18next.t('user:onDuty');
  }

  String get passcode {
    return i18next.t('user:passcode');
  }

  String get passcodeTakenError {
    return i18next.t('user:passcodeTakenError');
  }

  String get permission {
    return i18next.t('user:permission');
  }

  String get removeEmployee {
    return i18next.t('user:removeEmployee');
  }

  String get removeRole {
    return i18next.t('user:removeRole');
  }

  String get role {
    return i18next.t('user:role');
  }

  String usedRoleCannotDelete(roleName, users) {
    return i18next.t(
      'user:usedRoleCannotDelete',
      variables: {"roleName": roleName, "users": users},
    );
  }

  String get setPasscode {
    return i18next.t('user:setPasscode');
  }

  String get staff {
    return i18next.t('user:staff');
  }

  String get updatePasscode {
    return i18next.t('user:updatePasscode');
  }

  String get updateRole {
    return i18next.t('user:updateRole');
  }

  String get user {
    return i18next.t('user:user');
  }

  String get user_plural {
    return i18next.t('user:user_plural');
  }

  String get userNotFound {
    return i18next.t('user:userNotFound');
  }

  String workingDuration(hour, minute) {
    return i18next.t(
      'user:workingDuration',
      variables: {"hour": hour, "minute": minute},
    );
  }
}
