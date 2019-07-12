import 'price_screen.dart';
import 'utilities/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const symbolDataURL = 'https://apiv2.bitcoinaverage.com/indices/';

class CoinData {


  Future<String> getCurrencyData() async {
    NetworkHelper networkHelper = NetworkHelper('$symbolDataURL/{symbol_set}/ticker/{symbol}');
    var currencyData = await networkHelper.getData();
    return currencyData;
  }
}
