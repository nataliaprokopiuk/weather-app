import 'package:flutter_bloc/flutter_bloc.dart';




class CurrentWeatherLoaded extends CurrentWeatherState {
  final CurrentWeather? weather;

  CurrentWeatherLoaded({this.weather});
}


class CurrentWeatherBloc extends Bloc<CurrentWeatherEvent, CurrentWeatherState>{

}