import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'catalogo_record.g.dart';

abstract class CatalogoRecord
    implements Built<CatalogoRecord, CatalogoRecordBuilder> {
  static Serializer<CatalogoRecord> get serializer =>
      _$catalogoRecordSerializer;

  @BuiltValueField(wireName: 'Pescado')
  String? get pescado;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CatalogoRecordBuilder builder) => builder
    ..pescado = ''
    ..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Catalogo');

  static Stream<CatalogoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CatalogoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CatalogoRecord._();
  factory CatalogoRecord([void Function(CatalogoRecordBuilder) updates]) =
      _$CatalogoRecord;

  static CatalogoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCatalogoRecordData({
  String? pescado,
  String? nombre,
}) {
  final firestoreData = serializers.toFirestore(
    CatalogoRecord.serializer,
    CatalogoRecord(
      (c) => c
        ..pescado = pescado
        ..nombre = nombre,
    ),
  );

  return firestoreData;
}
