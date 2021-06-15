import 'servicio.dart';

class Trabajador {
  String nombre, vehiculo, matricula;
  int licencia;
  double puntuacion;
  bool disponible;
  Servicio servicio_actual;
  List<Servicio> serv_programados;
  List<Servicio> serv_realizados;
  //imagen lista preferencias, ubicación_actual, tiempo de espera, parado

  Trabajador(this.nombre, this.licencia, this.vehiculo, this.matricula) {
    this.puntuacion = 0;
    this.servicio_actual = null;
    this.serv_programados = [];
    this.serv_realizados = [];
    this.disponible = false;
  }
}
