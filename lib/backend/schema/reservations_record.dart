import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reservations_record.g.dart';

abstract class ReservationsRecord
    implements Built<ReservationsRecord, ReservationsRecordBuilder> {
  static Serializer<ReservationsRecord> get serializer =>
      _$reservationsRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get type;

  @nullable
  DateTime get date;

  @nullable
  DateTime get debut;

  @nullable
  DateTime get fin;

  @nullable
  DocumentReference get user;

  @nullable
  String get tel;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReservationsRecordBuilder builder) => builder
    ..nom = ''
    ..type = ''
    ..tel = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReservationsRecord._();
  factory ReservationsRecord(
          [void Function(ReservationsRecordBuilder) updates]) =
      _$ReservationsRecord;

  static ReservationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReservationsRecordData({
  String nom,
  String type,
  DateTime date,
  DateTime debut,
  DateTime fin,
  DocumentReference user,
  String tel,
}) =>
    serializers.toFirestore(
        ReservationsRecord.serializer,
        ReservationsRecord((r) => r
          ..nom = nom
          ..type = type
          ..date = date
          ..debut = debut
          ..fin = fin
          ..user = user
          ..tel = tel));
