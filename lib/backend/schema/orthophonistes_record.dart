import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orthophonistes_record.g.dart';

abstract class OrthophonistesRecord
    implements Built<OrthophonistesRecord, OrthophonistesRecordBuilder> {
  static Serializer<OrthophonistesRecord> get serializer =>
      _$orthophonistesRecordSerializer;

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

  static void _initializeBuilder(OrthophonistesRecordBuilder builder) => builder
    ..nom = ''
    ..tel1 = ''
    ..tel2 = ''
    ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orthophonistes');

  static Stream<OrthophonistesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrthophonistesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrthophonistesRecord._();
  factory OrthophonistesRecord(
          [void Function(OrthophonistesRecordBuilder) updates]) =
      _$OrthophonistesRecord;

  static OrthophonistesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrthophonistesRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        OrthophonistesRecord.serializer,
        OrthophonistesRecord((o) => o
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
