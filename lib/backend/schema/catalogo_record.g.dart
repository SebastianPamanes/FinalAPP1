// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CatalogoRecord> _$catalogoRecordSerializer =
    new _$CatalogoRecordSerializer();

class _$CatalogoRecordSerializer
    implements StructuredSerializer<CatalogoRecord> {
  @override
  final Iterable<Type> types = const [CatalogoRecord, _$CatalogoRecord];
  @override
  final String wireName = 'CatalogoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CatalogoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pescado;
    if (value != null) {
      result
        ..add('Pescado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CatalogoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatalogoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Pescado':
          result.pescado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CatalogoRecord extends CatalogoRecord {
  @override
  final String? pescado;
  @override
  final String? nombre;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CatalogoRecord([void Function(CatalogoRecordBuilder)? updates]) =>
      (new CatalogoRecordBuilder()..update(updates))._build();

  _$CatalogoRecord._({this.pescado, this.nombre, this.ffRef}) : super._();

  @override
  CatalogoRecord rebuild(void Function(CatalogoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatalogoRecordBuilder toBuilder() =>
      new CatalogoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogoRecord &&
        pescado == other.pescado &&
        nombre == other.nombre &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, pescado.hashCode), nombre.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatalogoRecord')
          ..add('pescado', pescado)
          ..add('nombre', nombre)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CatalogoRecordBuilder
    implements Builder<CatalogoRecord, CatalogoRecordBuilder> {
  _$CatalogoRecord? _$v;

  String? _pescado;
  String? get pescado => _$this._pescado;
  set pescado(String? pescado) => _$this._pescado = pescado;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CatalogoRecordBuilder() {
    CatalogoRecord._initializeBuilder(this);
  }

  CatalogoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pescado = $v.pescado;
      _nombre = $v.nombre;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CatalogoRecord;
  }

  @override
  void update(void Function(CatalogoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogoRecord build() => _build();

  _$CatalogoRecord _build() {
    final _$result = _$v ??
        new _$CatalogoRecord._(pescado: pescado, nombre: nombre, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
