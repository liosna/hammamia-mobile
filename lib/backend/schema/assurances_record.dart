import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'assurances_record.g.dart';

abstract class AssurancesRecord
    implements Built<AssurancesRecord, AssurancesRecordBuilder> {
  static Serializer<AssurancesRecord> get serializer =>
      _$assurancesRecordSerializer;

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

  static void _initializeBuilder(AssurancesRecordBuilder builder) => builder
    ..nom = ''
    ..tel1 = ''
    ..tel2 = ''
    ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assurances');

  static Stream<AssurancesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AssurancesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AssurancesRecord._();
  factory AssurancesRecord([void Function(AssurancesRecordBuilder) updates]) =
      _$AssurancesRecord;

  static AssurancesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAssurancesRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        AssurancesRecord.serializer,
        AssurancesRecord((a) => a
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
