// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

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

Serializer<Group> _$groupSerializer = new _$GroupSerializer();
Serializer<GroupState> _$groupStateSerializer = new _$GroupStateSerializer();
Serializer<GroupAction> _$groupActionSerializer = new _$GroupActionSerializer();

class _$GroupSerializer implements StructuredSerializer<Group> {
  @override
  final Iterable<Type> types = const [Group, _$Group];
  @override
  final String wireName = 'Group';

  @override
  Iterable serialize(Serializers serializers, Group object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lights',
      serializers.serialize(object.lightIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.className != null) {
      result
        ..add('class')
        ..add(serializers.serialize(object.className,
            specifiedType: const FullType(String)));
    }
    if (object.lights != null) {
      result
        ..add('lights')
        ..add(serializers.serialize(object.lights,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Light)])));
    }
    if (object.recycle != null) {
      result
        ..add('recycle')
        ..add(serializers.serialize(object.recycle,
            specifiedType: const FullType(bool)));
    }
    if (object.modelId != null) {
      result
        ..add('modelid')
        ..add(serializers.serialize(object.modelId,
            specifiedType: const FullType(String)));
    }
    if (object.uniqueId != null) {
      result
        ..add('uniqueid')
        ..add(serializers.serialize(object.uniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(GroupState)));
    }
    if (object.action != null) {
      result
        ..add('action')
        ..add(serializers.serialize(object.action,
            specifiedType: const FullType(GroupAction)));
    }

    return result;
  }

  @override
  Group deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class':
          result.className = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lights':
          result.lightIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'lights':
          result.lights.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Light)]))
              as BuiltList);
          break;
        case 'recycle':
          result.recycle = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(GroupState)) as GroupState);
          break;
        case 'action':
          result.action.replace(serializers.deserialize(value,
              specifiedType: const FullType(GroupAction)) as GroupAction);
          break;
      }
    }

    return result.build();
  }
}

class _$GroupStateSerializer implements StructuredSerializer<GroupState> {
  @override
  final Iterable<Type> types = const [GroupState, _$GroupState];
  @override
  final String wireName = 'GroupState';

  @override
  Iterable serialize(Serializers serializers, GroupState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.anyOn != null) {
      result
        ..add('any_on')
        ..add(serializers.serialize(object.anyOn,
            specifiedType: const FullType(bool)));
    }
    if (object.allOn != null) {
      result
        ..add('all_on')
        ..add(serializers.serialize(object.allOn,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  GroupState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'any_on':
          result.anyOn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'all_on':
          result.allOn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GroupActionSerializer implements StructuredSerializer<GroupAction> {
  @override
  final Iterable<Type> types = const [GroupAction, _$GroupAction];
  @override
  final String wireName = 'GroupAction';

  @override
  Iterable serialize(Serializers serializers, GroupAction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.on != null) {
      result
        ..add('on')
        ..add(serializers.serialize(object.on,
            specifiedType: const FullType(bool)));
    }
    if (object.brightness != null) {
      result
        ..add('bri')
        ..add(serializers.serialize(object.brightness,
            specifiedType: const FullType(int)));
    }
    if (object.hue != null) {
      result
        ..add('hue')
        ..add(serializers.serialize(object.hue,
            specifiedType: const FullType(int)));
    }
    if (object.saturation != null) {
      result
        ..add('sat')
        ..add(serializers.serialize(object.saturation,
            specifiedType: const FullType(int)));
    }
    if (object.xy != null) {
      result
        ..add('xy')
        ..add(serializers.serialize(object.xy,
            specifiedType:
                const FullType(BuiltList, const [const FullType(num)])));
    }
    if (object.ct != null) {
      result
        ..add('ct')
        ..add(serializers.serialize(object.ct,
            specifiedType: const FullType(int)));
    }
    if (object.alert != null) {
      result
        ..add('alert')
        ..add(serializers.serialize(object.alert,
            specifiedType: const FullType(String)));
    }
    if (object.effect != null) {
      result
        ..add('effect')
        ..add(serializers.serialize(object.effect,
            specifiedType: const FullType(String)));
    }
    if (object.colorMode != null) {
      result
        ..add('colormode')
        ..add(serializers.serialize(object.colorMode,
            specifiedType: const FullType(String)));
    }
    if (object.scene != null) {
      result
        ..add('scene')
        ..add(serializers.serialize(object.scene,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  GroupAction deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupActionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'on':
          result.on = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'bri':
          result.brightness = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hue':
          result.hue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sat':
          result.saturation = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'xy':
          result.xy.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(num)]))
              as BuiltList);
          break;
        case 'ct':
          result.ct = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'alert':
          result.alert = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'effect':
          result.effect = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'colormode':
          result.colorMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scene':
          result.scene = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Group extends Group {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String className;
  @override
  final BuiltList<String> lightIds;
  @override
  final BuiltList<Light> lights;
  @override
  final bool recycle;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final GroupState state;
  @override
  final GroupAction action;

  factory _$Group([void updates(GroupBuilder b)]) =>
      (new GroupBuilder()..update(updates)).build();

  _$Group._(
      {this.id,
      this.type,
      this.name,
      this.className,
      this.lightIds,
      this.lights,
      this.recycle,
      this.modelId,
      this.uniqueId,
      this.state,
      this.action})
      : super._() {
    if (lightIds == null) {
      throw new BuiltValueNullFieldError('Group', 'lightIds');
    }
  }

  @override
  Group rebuild(void updates(GroupBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBuilder toBuilder() => new GroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        className == other.className &&
        lightIds == other.lightIds &&
        lights == other.lights &&
        recycle == other.recycle &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        state == other.state &&
        action == other.action;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), type.hashCode),
                                        name.hashCode),
                                    className.hashCode),
                                lightIds.hashCode),
                            lights.hashCode),
                        recycle.hashCode),
                    modelId.hashCode),
                uniqueId.hashCode),
            state.hashCode),
        action.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Group')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('className', className)
          ..add('lightIds', lightIds)
          ..add('lights', lights)
          ..add('recycle', recycle)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('state', state)
          ..add('action', action))
        .toString();
  }
}

class GroupBuilder implements Builder<Group, GroupBuilder> {
  _$Group _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _className;
  String get className => _$this._className;
  set className(String className) => _$this._className = className;

  ListBuilder<String> _lightIds;
  ListBuilder<String> get lightIds =>
      _$this._lightIds ??= new ListBuilder<String>();
  set lightIds(ListBuilder<String> lightIds) => _$this._lightIds = lightIds;

  ListBuilder<Light> _lights;
  ListBuilder<Light> get lights => _$this._lights ??= new ListBuilder<Light>();
  set lights(ListBuilder<Light> lights) => _$this._lights = lights;

  bool _recycle;
  bool get recycle => _$this._recycle;
  set recycle(bool recycle) => _$this._recycle = recycle;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  GroupStateBuilder _state;
  GroupStateBuilder get state => _$this._state ??= new GroupStateBuilder();
  set state(GroupStateBuilder state) => _$this._state = state;

  GroupActionBuilder _action;
  GroupActionBuilder get action => _$this._action ??= new GroupActionBuilder();
  set action(GroupActionBuilder action) => _$this._action = action;

  GroupBuilder();

  GroupBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _className = _$v.className;
      _lightIds = _$v.lightIds?.toBuilder();
      _lights = _$v.lights?.toBuilder();
      _recycle = _$v.recycle;
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _state = _$v.state?.toBuilder();
      _action = _$v.action?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Group other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Group;
  }

  @override
  void update(void updates(GroupBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Group build() {
    _$Group _$result;
    try {
      _$result = _$v ??
          new _$Group._(
              id: id,
              type: type,
              name: name,
              className: className,
              lightIds: lightIds.build(),
              lights: _lights?.build(),
              recycle: recycle,
              modelId: modelId,
              uniqueId: uniqueId,
              state: _state?.build(),
              action: _action?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lightIds';
        lightIds.build();
        _$failedField = 'lights';
        _lights?.build();

        _$failedField = 'state';
        _state?.build();
        _$failedField = 'action';
        _action?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Group', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GroupState extends GroupState {
  @override
  final bool anyOn;
  @override
  final bool allOn;

  factory _$GroupState([void updates(GroupStateBuilder b)]) =>
      (new GroupStateBuilder()..update(updates)).build();

  _$GroupState._({this.anyOn, this.allOn}) : super._();

  @override
  GroupState rebuild(void updates(GroupStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupStateBuilder toBuilder() => new GroupStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupState && anyOn == other.anyOn && allOn == other.allOn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, anyOn.hashCode), allOn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupState')
          ..add('anyOn', anyOn)
          ..add('allOn', allOn))
        .toString();
  }
}

class GroupStateBuilder implements Builder<GroupState, GroupStateBuilder> {
  _$GroupState _$v;

  bool _anyOn;
  bool get anyOn => _$this._anyOn;
  set anyOn(bool anyOn) => _$this._anyOn = anyOn;

  bool _allOn;
  bool get allOn => _$this._allOn;
  set allOn(bool allOn) => _$this._allOn = allOn;

  GroupStateBuilder();

  GroupStateBuilder get _$this {
    if (_$v != null) {
      _anyOn = _$v.anyOn;
      _allOn = _$v.allOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GroupState;
  }

  @override
  void update(void updates(GroupStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupState build() {
    final _$result = _$v ?? new _$GroupState._(anyOn: anyOn, allOn: allOn);
    replace(_$result);
    return _$result;
  }
}

class _$GroupAction extends GroupAction {
  @override
  final bool on;
  @override
  final int brightness;
  @override
  final int hue;
  @override
  final int saturation;
  @override
  final BuiltList<num> xy;
  @override
  final int ct;
  @override
  final String alert;
  @override
  final String effect;
  @override
  final String colorMode;
  @override
  final String scene;

  factory _$GroupAction([void updates(GroupActionBuilder b)]) =>
      (new GroupActionBuilder()..update(updates)).build();

  _$GroupAction._(
      {this.on,
      this.brightness,
      this.hue,
      this.saturation,
      this.xy,
      this.ct,
      this.alert,
      this.effect,
      this.colorMode,
      this.scene})
      : super._();

  @override
  GroupAction rebuild(void updates(GroupActionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupActionBuilder toBuilder() => new GroupActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupAction &&
        on == other.on &&
        brightness == other.brightness &&
        hue == other.hue &&
        saturation == other.saturation &&
        xy == other.xy &&
        ct == other.ct &&
        alert == other.alert &&
        effect == other.effect &&
        colorMode == other.colorMode &&
        scene == other.scene;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, on.hashCode),
                                        brightness.hashCode),
                                    hue.hashCode),
                                saturation.hashCode),
                            xy.hashCode),
                        ct.hashCode),
                    alert.hashCode),
                effect.hashCode),
            colorMode.hashCode),
        scene.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupAction')
          ..add('on', on)
          ..add('brightness', brightness)
          ..add('hue', hue)
          ..add('saturation', saturation)
          ..add('xy', xy)
          ..add('ct', ct)
          ..add('alert', alert)
          ..add('effect', effect)
          ..add('colorMode', colorMode)
          ..add('scene', scene))
        .toString();
  }
}

class GroupActionBuilder implements Builder<GroupAction, GroupActionBuilder> {
  _$GroupAction _$v;

  bool _on;
  bool get on => _$this._on;
  set on(bool on) => _$this._on = on;

  int _brightness;
  int get brightness => _$this._brightness;
  set brightness(int brightness) => _$this._brightness = brightness;

  int _hue;
  int get hue => _$this._hue;
  set hue(int hue) => _$this._hue = hue;

  int _saturation;
  int get saturation => _$this._saturation;
  set saturation(int saturation) => _$this._saturation = saturation;

  ListBuilder<num> _xy;
  ListBuilder<num> get xy => _$this._xy ??= new ListBuilder<num>();
  set xy(ListBuilder<num> xy) => _$this._xy = xy;

  int _ct;
  int get ct => _$this._ct;
  set ct(int ct) => _$this._ct = ct;

  String _alert;
  String get alert => _$this._alert;
  set alert(String alert) => _$this._alert = alert;

  String _effect;
  String get effect => _$this._effect;
  set effect(String effect) => _$this._effect = effect;

  String _colorMode;
  String get colorMode => _$this._colorMode;
  set colorMode(String colorMode) => _$this._colorMode = colorMode;

  String _scene;
  String get scene => _$this._scene;
  set scene(String scene) => _$this._scene = scene;

  GroupActionBuilder();

  GroupActionBuilder get _$this {
    if (_$v != null) {
      _on = _$v.on;
      _brightness = _$v.brightness;
      _hue = _$v.hue;
      _saturation = _$v.saturation;
      _xy = _$v.xy?.toBuilder();
      _ct = _$v.ct;
      _alert = _$v.alert;
      _effect = _$v.effect;
      _colorMode = _$v.colorMode;
      _scene = _$v.scene;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupAction other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GroupAction;
  }

  @override
  void update(void updates(GroupActionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupAction build() {
    _$GroupAction _$result;
    try {
      _$result = _$v ??
          new _$GroupAction._(
              on: on,
              brightness: brightness,
              hue: hue,
              saturation: saturation,
              xy: _xy?.build(),
              ct: ct,
              alert: alert,
              effect: effect,
              colorMode: colorMode,
              scene: scene);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'xy';
        _xy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
