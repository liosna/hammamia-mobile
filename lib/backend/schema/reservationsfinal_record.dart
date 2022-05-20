import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reservationsfinal_record.g.dart';

abstract class ReservationsfinalRecord
    implements Built<ReservationsfinalRecord, ReservationsfinalRecordBuilder> {
  static Serializer<ReservationsfinalRecord> get serializer =>
      _$reservationsfinalRecordSerializer;

  @nullable
  DateTime get date;

  @nullable
  DateTime get debut;

  @nullable
  DateTime get fin;

  @nullable
  String get nom;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReservationsfinalRecordBuilder builder) =>
      builder
        ..nom = ''
        ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservationsfinal');

  static Stream<ReservationsfinalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReservationsfinalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReservationsfinalRecord._();
  factory ReservationsfinalRecord(
          [void Function(ReservationsfinalRecordBuilder) updates]) =
      _$ReservationsfinalRecord;

  static ReservationsfinalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReservationsfinalRecordData({
  DateTime date,
  DateTime debut,
  DateTime fin,
  String nom,
  String type,
}) =>
    serializers.toFirestore(
        ReservationsfinalRecord.serializer,
        ReservationsfinalRecord((r) => r
          ..date = date
          ..debut = debut
          ..fin = fin
          ..nom = nom
          ..type = type));
