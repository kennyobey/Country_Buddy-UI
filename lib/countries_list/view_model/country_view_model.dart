import 'package:country_buddy/countries_list/models/countries_list_model.dart';
import 'package:country_buddy/countries_list/repo/api_status_code.dart';
import 'package:country_buddy/countries_list/repo/contry_service.dart';
import 'package:flutter/material.dart';

class CountryViewModel extends ChangeNotifier {
  bool _loading = false;
  late List<CountryBuddy> _countryListmodel = [];

  bool get loading => _loading;
  List<CountryBuddy> get countryListmodel => _countryListmodel;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setContinentToEmpty() async {
    _countryListmodel = [];
    notifyListeners();
  }

  void setCountryListModel(List<CountryBuddy> countryListmodel) {
    _countryListmodel = countryListmodel;
  }

  Future<void> getCountries(String continent) async {
    setContinentToEmpty();
    setLoading(true);
    var response = await CountriesService.getCountries(continent);
    if (response is Success) {
      setCountryListModel(response.response as List<CountryBuddy>);
    } else if (response is Failure) {
      print(response.erresponse);
    }
    setLoading(false);
  }
}
