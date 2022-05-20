import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plombiers_record.g.dart';

abstract class PlombiersRecord
    implements Built<PlombiersRecord, PlombiersRecordBuilder> {
  static Serializer<PlombiersRecord> get serializer =>
      _$plombiersRecordSerializer;

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

  static void _initializeBuilder(PlombiersRecordBuilder builder) => builder
    ..nom = ''
    ..tel1 = ''
    ..tel2 = ''
    ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plombiers');

  static Stream<PlombiersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PlombiersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PlombiersRecord._();
  factory PlombiersRecord([void Function(PlombiersRecordBuilder) updates]) =
      _$PlombiersRecord;

  static PlombiersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPlombiersRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        PlombiersRecord.serializer,
        PlombiersRecord((p) => p
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
