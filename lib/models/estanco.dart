// To parse this JSON data, do
//
//     final Estanco = EstancoFromJson(jsonString);

import 'dart:convert';

// ignore: non_constant_identifier_names
List<Estanco> EstancoFromJson(String str) => List<Estanco>.from(json.decode(str).map((x) => Estanco.fromJson(x)));

// ignore: non_constant_identifier_names
String EstancoToJson(List<Estanco> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Estanco {
    Estanco({
       required this.idEstanco,
       required this.nombreEstanco,
       required this.direccionEstanco,
       required this.barrio,
       required this.telefonoEstanco,
       required this.idZona,
       required this.idFranquicia,
       required this.imagenEstanco,
       required this.logoEstanco,
       required this.descripcion,
       required this.horaEstanco,
       required this.longitud,
       required this.latitud,
       required this.nit,
       required this.cedulaRepresentante
    });

    int idEstanco;
    String nombreEstanco;
    String direccionEstanco;
    String barrio;
    String telefonoEstanco;
    int idZona;
    int idFranquicia;
    String imagenEstanco;
    String logoEstanco;
    String descripcion;
    String horaEstanco;
    String longitud;
    String latitud;
    String nit;
    String cedulaRepresentante;

    factory Estanco.fromJson(Map<String, dynamic> json) => Estanco(
        idEstanco: json["id_estanco"],
        nombreEstanco: json["nombre_estanco"],
        direccionEstanco: json["direccion_estanco"],
        barrio: json["barrio"],
        telefonoEstanco: json["telefono_estanco"],
        idZona: json["id_zona"],
        idFranquicia: json["id_franquicia"],
        imagenEstanco: json["imagen_estanco"],
        logoEstanco: json["logo_estanco"],
        descripcion: json["descripcion"],
        horaEstanco: json["hora_estanco"],
        longitud: json["longitud"],
        latitud: json["latitud"],
        nit: json["nit"],
        cedulaRepresentante: json["cedula_representante"],
    );

    Map<String, dynamic> toJson() => {
        "id_estanco": idEstanco,
        "nombre_estanco": nombreEstanco,
        "direccion_estanco": direccionEstanco,
        "barrio": barrio,
        "telefono_estanco": telefonoEstanco,
        "id_zona": idZona,
        "id_franquicia": idFranquicia,
        "imagen_estanco": imagenEstanco,
        "logo_estanco": logoEstanco,
        "descripcion": descripcion,
        "hora_estanco": horaEstanco,
        "longitud": longitud,
        "latitud": latitud,
        "nit": nit,
        "cedula_representante": cedulaRepresentante,
    };
}
