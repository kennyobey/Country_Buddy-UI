
import 'package:country_buddy/models/africa_models.dart';
import 'package:http/http.dart' as http;

class CountriesService {
  Future<List<CountryBuddy>> getCountries() async {
    var response =
        await http.get(Uri.https('restcountries.com', 'countries'));
   List<CountryBuddy> countries = countryBuddyFromJson(response.body);
    return countries;
  }
}