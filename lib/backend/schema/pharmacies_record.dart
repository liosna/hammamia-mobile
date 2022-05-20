import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pharmacies_record.g.dart';

abstract class PharmaciesRecord
    implements Built<PharmaciesRecord, PharmaciesRecordBuilder> {
  static Serializer<PharmaciesRecord> get serializer =>
      _$pharmaciesRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get tel1;

  @nullable
  String get tel2;

  @nullable
  String get tel3;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PharmaciesRecordBuilder builder) => builder
    ..nom = ''
    ..tel1 = ''
    ..tel2 = ''
    ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pharmacies');

  static Stream<PharmaciesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PharmaciesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PharmaciesRecord._();
  factory PharmaciesRecord([void Function(PharmaciesRecordBuilder) updates]) =
      _$PharmaciesRecord;

  static PharmaciesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPharmaciesRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        PharmaciesRecord.serializer,
        PharmaciesRecord((p) => p
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
