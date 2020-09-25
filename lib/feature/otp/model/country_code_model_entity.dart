import 'package:xam_otp_flutter/generated/json/base/json_convert_content.dart';
import 'package:xam_otp_flutter/generated/json/base/json_field.dart';

class CountryCodeModelEntity with JsonConvert<CountryCodeModelEntity> {
	String name;
	List<String> topLevelDomain;
	String alpha2Code;
	String alpha3Code;
	List<String> callingCodes;
	String capital;
	List<String> altSpellings;
	String region;
	String subregion;
	double population;
	List<double> latlng;
	String demonym;
	double area;
	double gini;
	List<String> timezones;
	List<String> borders;
	String nativeName;
	String numericCode;
	List<CountryCodeModelCurrency> currencies;
	List<CountryCodeModelLanguage> languages;
	CountryCodeModelTranslations translations;
	String flag;
	List<CountryCodeModelRegionalBloc> regionalBlocs;
	String cioc;
}

class CountryCodeModelCurrency with JsonConvert<CountryCodeModelCurrency> {
	String code;
	String name;
	String symbol;
}

class CountryCodeModelLanguage with JsonConvert<CountryCodeModelLanguage> {
	@JSONField(name: "iso639_1")
	String iso6391;
	@JSONField(name: "iso639_2")
	String iso6392;
	String name;
	String nativeName;
}

class CountryCodeModelTranslations with JsonConvert<CountryCodeModelTranslations> {
	String de;
	String es;
	String fr;
	String ja;
	String it;
	String br;
	String pt;
	String nl;
	String hr;
	String fa;
}

class CountryCodeModelRegionalBloc with JsonConvert<CountryCodeModelRegionalBloc> {
	String acronym;
	String name;
	List<dynamic> otherAcronyms;
	List<dynamic> otherNames;
}
