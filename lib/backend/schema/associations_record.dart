import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'associations_record.g.dart';

abstract class AssociationsRecord
    implements Built<AssociationsRecord, AssociationsRecordBuilder> {
  static Serializer<AssociationsRecord> get serializer =>
      _$associationsRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  bool get isverified;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AssociationsRecordBuilder builder) =>
      builder..isverified = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('associations');

  static Stream<AssociationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AssociationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AssociationsRecord._();
  factory AssociationsRecord(
          [void Function(AssociationsRecordBuilder) updates]) =
      _$AssociationsRecord;

  static AssociationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAssociationsRecordData({
  DocumentReference user,
  bool isverified,
}) =>
    serializers.toFirestore(
        AssociationsRecord.serializer,
        AssociationsRecord((a) => a
          ..user = user
          ..isverified = isverified));
