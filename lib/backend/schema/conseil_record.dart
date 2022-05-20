import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'conseil_record.g.dart';

abstract class ConseilRecord
    implements Built<ConseilRecord, ConseilRecordBuilder> {
  static Serializer<ConseilRecord> get serializer => _$conseilRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get role;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ConseilRecordBuilder builder) => builder
    ..nom = ''
    ..role = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conseil');

  static Stream<ConseilRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ConseilRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ConseilRecord._();
  factory ConseilRecord([void Function(ConseilRecordBuilder) updates]) =
      _$ConseilRecord;

  static ConseilRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createConseilRecordData({
  String nom,
  String role,
}) =>
    serializers.toFirestore(
        ConseilRecord.serializer,
        ConseilRecord((c) => c
          ..nom = nom
          ..role = role));
