import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get prenom;

  @nullable
  String get role;

  @nullable
  String get sexe;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get description;

  @nullable
  String get lien;

  @nullable
  String get isassociation;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..prenom = ''
    ..role = ''
    ..sexe = ''
    ..email = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..uid = ''
    ..photoUrl = ''
    ..description = ''
    ..lien = ''
    ..isassociation = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String prenom,
  String role,
  String sexe,
  String email,
  String displayName,
  String phoneNumber,
  String uid,
  DateTime createdTime,
  String photoUrl,
  String description,
  String lien,
  String isassociation,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..prenom = prenom
          ..role = role
          ..sexe = sexe
          ..email = email
          ..displayName = displayName
          ..phoneNumber = phoneNumber
          ..uid = uid
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..description = description
          ..lien = lien
          ..isassociation = isassociation));
