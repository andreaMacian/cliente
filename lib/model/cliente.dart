import 'package:clienteapp/model/trabajador.dart';

import 'servicio.dart';

class Cliente {
  String email, nombre, cod_promocion;
  double monedero;
  int telefono;
  Servicio servicio_actual;
  List <Servicio> programados;
  List <Servicio> realizados;
  List <Trabajador> favoritos;

  //List preferencias, lista ubicaciones favoritas, ubi actual (puede ser null)

  Cliente(this.nombre, this.cod_promocion, this.monedero, this.telefono
      ){
        this.programados=[];
        this.realizados=[];
        this.favoritos=[];
      }
}