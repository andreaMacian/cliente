class Servicio {
  String origen, destino, tipo, metodo_pago, id_usuario, id_conductor;
  DateTime fechaInicio, fechaFin;
  double coste;

  Servicio(
      {this.origen,
      this.destino,
      this.tipo,
      this.metodo_pago,
      this.id_usuario,
      this.id_conductor,
      this.fechaInicio,
      this.fechaFin,
      this.coste});
}
/*
import 'package:cloud_firestore/cloud_firestore.dart';

class Servicio {
  String metodo_pago, id_usuario, id_conductor;
  DateTime fechaInicio, fechaFin;
  Ubicacion origen, destino;
  double coste;

  Servicio(this.origen, this.destino, this.metodo_pago, this.id_usuario,
      this.id_conductor, this.fechaInicio, this.fechaFin, this.coste
      );
}

Stream<List<Servicio>> llistaServicios() {
  final servicios = FirebaseFirestore.instance.collection('Servicios').orderBy('fechaInicio');

  return servicios.snapshots().map((querySnapshot) {
    List<Servicio> result = [];
    for (var servicioSnapshot in querySnapshot.docs) {
      result.add(Servicio(
        servicioSnapshot['origen'],
        servicioSnapshot['destino'],
        servicioSnapshot['metodo_pago'],
        servicioSnapshot['id_usuario'],
        servicioSnapshot['id_conductor'],
        servicioSnapshot['fechaInciio'].toDate(),
        servicioSnapshot['fechaFin'].toDate(),
      ));
    }
    return result;
  });
}
*/
