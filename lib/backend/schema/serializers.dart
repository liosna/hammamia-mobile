import 'package:built_value/standard_json_plugin.dart';

import 'users_record.dart';
import 'posts_record.dart';
import 'plaintes_record.dart';
import 'suggestions_record.dart';
import 'paragraphes_record.dart';
import 'pediatres_record.dart';
import 'pv_record.dart';
import 'pharmacies_record.dart';
import 'generale_record.dart';
import 'opticiens_record.dart';
import 'pedopsychiatres_record.dart';
import 'radiologues_record.dart';
import 'cardiologues_record.dart';
import 'orl_record.dart';
import 'audiologues_record.dart';
import 'orthophonistes_record.dart';
import 'dermatologues_record.dart';
import 'gynecologues_record.dart';
import 'kinesi_record.dart';
import 'ophtalmologues_record.dart';
import 'dentistes_record.dart';
import 'vet_record.dart';
import 'avocats_record.dart';
import 'huissiers_record.dart';
import 'notaires_record.dart';
import 'event_record.dart';
import 'banques_record.dart';
import 'postes_record.dart';
import 'assurances_record.dart';
import 'comptables_record.dart';
import 'associations_record.dart';
import 'demandescontact_record.dart';
import 'reservations_record.dart';
import 'reservationsfinal_record.dart';
import 'messages_record.dart';
import 'conseil_record.dart';
import 'forgerons_record.dart';
import 'menuisiers_record.dart';
import 'macons_record.dart';
import 'peintres_record.dart';
import 'plombiers_record.dart';
import 'climatisation_record.dart';

import 'index.dart';

export 'index.dart';

part 'serializers.g.dart';

const kDocumentReferenceField = 'Document__Reference__Field';

@SerializersFor(const [
  UsersRecord,
  PostsRecord,
  PlaintesRecord,
  SuggestionsRecord,
  ParagraphesRecord,
  PediatresRecord,
  PvRecord,
  PharmaciesRecord,
  GeneraleRecord,
  OpticiensRecord,
  PedopsychiatresRecord,
  RadiologuesRecord,
  CardiologuesRecord,
  OrlRecord,
  AudiologuesRecord,
  OrthophonistesRecord,
  DermatologuesRecord,
  GynecologuesRecord,
  KinesiRecord,
  OphtalmologuesRecord,
  DentistesRecord,
  VetRecord,
  AvocatsRecord,
  HuissiersRecord,
  NotairesRecord,
  EventRecord,
  BanquesRecord,
  PostesRecord,
  AssurancesRecord,
  ComptablesRecord,
  AssociationsRecord,
  DemandescontactRecord,
  ReservationsRecord,
  ReservationsfinalRecord,
  MessagesRecord,
  ConseilRecord,
  ForgeronsRecord,
  MenuisiersRecord,
  MaconsRecord,
  PeintresRecord,
  PlombiersRecord,
  ClimatisationRecord,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DocumentReferenceSerializer())
      ..add(DateTimeSerializer())
      ..add(LatLngSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

extension SerializerExtensions on Serializers {
  Map<String, dynamic> toFirestore<T>(Serializer<T> serializer, T object) =>
      mapToFirestore(serializeWith(serializer, object));
}

class DocumentReferenceSerializer
    implements PrimitiveSerializer<DocumentReference> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DocumentReference]);
  @override
  final String wireName = 'DocumentReference';

  @override
  Object serialize(Serializers serializers, DocumentReference reference,
      {FullType specifiedType: FullType.unspecified}) {
    return reference;
  }

  @override
  DocumentReference deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DocumentReference;
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType: FullType.unspecified}) {
    return dateTime;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DateTime;
}

class LatLngSerializer implements PrimitiveSerializer<LatLng> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([LatLng]);
  @override
  final String wireName = 'LatLng';

  @override
  Object serialize(Serializers serializers, LatLng location,
      {FullType specifiedType: FullType.unspecified}) {
    return location;
  }

  @override
  LatLng deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as LatLng;
}

Map<String, dynamic> serializedData(DocumentSnapshot doc) =>
    {...mapFromFirestore(doc.data()), kDocumentReferenceField: doc.reference};

Map<String, dynamic> mapFromFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is Timestamp) {
        value = (value as Timestamp).toDate();
      }
      if (value is GeoPoint) {
        value = (value as GeoPoint).toLatLng();
      }
      return MapEntry(key, value);
    });

Map<String, dynamic> mapToFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is LatLng) {
        value = (value as LatLng).toGeoPoint();
      }
      return MapEntry(key, value);
    });

extension GeoPointExtension on LatLng {
  GeoPoint toGeoPoint() => GeoPoint(latitude, longitude);
}

extension LatLngExtension on GeoPoint {
  LatLng toLatLng() => LatLng(latitude, longitude);
}

DocumentReference toRef(String ref) => FirebaseFirestore.instance.doc(ref);

T safeGet<T>(T Function() func, [Function(dynamic) reportError]) {
  try {
    return func();
  } catch (e) {
    reportError?.call(e);
  }
  return null;
}
