import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'demandescontact_record.g.dart';

abstract class DemandescontactRecord
    implements Built<DemandescontactRecord, DemandescontactRecordBuilder> {
  static Serializer<DemandescontactRecord> get serializer =>
      _$demandescontactRecordSerializer;

  @nullable
  String get emploi;

  @nullable
  String get nom;

  @nullable
  String get tel1;

  @nullable
  String get tel2;

  @nullable
  String get tel3;

  @nullable
  DocumentReference get user;

  @nullable
  String get photo;

  @nullable
  bool get isdeleted;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DemandescontactRecordBuilder builder) =>
      builder
        ..emploi = ''
        ..nom = ''
        ..tel1 = ''
        ..tel2 = ''
        ..tel3 = ''
        ..photo = ''
        ..isdeleted = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('demandescontact');

  static Stream<DemandescontactRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DemandescontactRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DemandescontactRecord._();
  factory DemandescontactRecord(
          [void Function(DemandescontactRecordBuilder) updates]) =
      _$DemandescontactRecord;

  static DemandescontactRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDemandescontactRecordData({
  String emploi,
  String nom,
  String tel1,
  String tel2,
  String tel3,
  DocumentReference user,
  String photo,
  bool isdeleted,
}) =>
    serializers.toFirestore(
        DemandescontactRecord.serializer,
        DemandescontactRecord((d) => d
          ..emploi = emploi
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3
          ..user = user
          ..photo = photo
          ..isdeleted = isdeleted));
