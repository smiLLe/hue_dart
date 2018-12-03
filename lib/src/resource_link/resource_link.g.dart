// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<ResourceLink> _$resourceLinkSerializer =
    new _$ResourceLinkSerializer();

class _$ResourceLinkSerializer implements StructuredSerializer<ResourceLink> {
  @override
  final Iterable<Type> types = const [ResourceLink, _$ResourceLink];
  @override
  final String wireName = 'ResourceLink';

  @override
  Iterable serialize(Serializers serializers, ResourceLink object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.classId != null) {
      result
        ..add('classid')
        ..add(serializers.serialize(object.classId,
            specifiedType: const FullType(int)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(String)));
    }
    if (object.recycle != null) {
      result
        ..add('recycle')
        ..add(serializers.serialize(object.recycle,
            specifiedType: const FullType(bool)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ResourceLink deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResourceLinkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'classid':
          result.classId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recycle':
          result.recycle = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ResourceLink extends ResourceLink {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String type;
  @override
  final int classId;
  @override
  final String owner;
  @override
  final bool recycle;
  @override
  final BuiltList<String> links;

  factory _$ResourceLink([void updates(ResourceLinkBuilder b)]) =>
      (new ResourceLinkBuilder()..update(updates)).build();

  _$ResourceLink._(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.classId,
      this.owner,
      this.recycle,
      this.links})
      : super._();

  @override
  ResourceLink rebuild(void updates(ResourceLinkBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceLinkBuilder toBuilder() => new ResourceLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceLink &&
        name == other.name &&
        description == other.description &&
        type == other.type &&
        classId == other.classId &&
        owner == other.owner &&
        recycle == other.recycle &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        type.hashCode),
                    classId.hashCode),
                owner.hashCode),
            recycle.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResourceLink')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('type', type)
          ..add('classId', classId)
          ..add('owner', owner)
          ..add('recycle', recycle)
          ..add('links', links))
        .toString();
  }
}

class ResourceLinkBuilder
    implements Builder<ResourceLink, ResourceLinkBuilder> {
  _$ResourceLink _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  String _owner;
  String get owner => _$this._owner;
  set owner(String owner) => _$this._owner = owner;

  bool _recycle;
  bool get recycle => _$this._recycle;
  set recycle(bool recycle) => _$this._recycle = recycle;

  ListBuilder<String> _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String> links) => _$this._links = links;

  ResourceLinkBuilder();

  ResourceLinkBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _type = _$v.type;
      _classId = _$v.classId;
      _owner = _$v.owner;
      _recycle = _$v.recycle;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceLink other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ResourceLink;
  }

  @override
  void update(void updates(ResourceLinkBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ResourceLink build() {
    _$ResourceLink _$result;
    try {
      _$result = _$v ??
          new _$ResourceLink._(
              id: id,
              name: name,
              description: description,
              type: type,
              classId: classId,
              owner: owner,
              recycle: recycle,
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ResourceLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
