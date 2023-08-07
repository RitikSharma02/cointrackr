//2. Import the required packages.
import 'dart:convert';
import 'package:http/http.dart' as http;

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

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

class CoinData {
  Future getCoinData() async {
    String url =
        'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=83CDDD35-86C7-441F-B331-229A715EA9FC';
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);

    print(response.body);
  }
}
