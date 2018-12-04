// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light.dart';

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

Serializer<LightState> _$lightStateSerializer = new _$LightStateSerializer();
Serializer<Ambiance> _$ambianceSerializer = new _$AmbianceSerializer();
Serializer<Aura> _$auraSerializer = new _$AuraSerializer();
Serializer<Beyond> _$beyondSerializer = new _$BeyondSerializer();
Serializer<Bloom> _$bloomSerializer = new _$BloomSerializer();
Serializer<Bulb> _$bulbSerializer = new _$BulbSerializer();
Serializer<DownLight> _$downLightSerializer = new _$DownLightSerializer();
Serializer<Entity> _$entitySerializer = new _$EntitySerializer();
Serializer<Go> _$goSerializer = new _$GoSerializer();
Serializer<Impulse> _$impulseSerializer = new _$ImpulseSerializer();
Serializer<Iris> _$irisSerializer = new _$IrisSerializer();
Serializer<LightStrip> _$lightStripSerializer = new _$LightStripSerializer();
Serializer<Phoenix> _$phoenixSerializer = new _$PhoenixSerializer();
Serializer<Spot> _$spotSerializer = new _$SpotSerializer();
Serializer<StoryLight> _$storyLightSerializer = new _$StoryLightSerializer();
Serializer<White> _$whiteSerializer = new _$WhiteSerializer();
Serializer<UnknownLight> _$unknownLightSerializer =
    new _$UnknownLightSerializer();

class _$LightStateSerializer implements StructuredSerializer<LightState> {
  @override
  final Iterable<Type> types = const [LightState, _$LightState];
  @override
  final String wireName = 'LightState';

  @override
  Iterable serialize(Serializers serializers, LightState object,
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
    if (object.reachable != null) {
      result
        ..add('reachable')
        ..add(serializers.serialize(object.reachable,
            specifiedType: const FullType(bool)));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LightState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LightStateBuilder();

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
        case 'reachable':
          result.reachable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AmbianceSerializer implements StructuredSerializer<Ambiance> {
  @override
  final Iterable<Type> types = const [Ambiance, _$Ambiance];
  @override
  final String wireName = 'Ambiance';

  @override
  Iterable serialize(Serializers serializers, Ambiance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Ambiance deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AmbianceBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuraSerializer implements StructuredSerializer<Aura> {
  @override
  final Iterable<Type> types = const [Aura, _$Aura];
  @override
  final String wireName = 'Aura';

  @override
  Iterable serialize(Serializers serializers, Aura object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Aura deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuraBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BeyondSerializer implements StructuredSerializer<Beyond> {
  @override
  final Iterable<Type> types = const [Beyond, _$Beyond];
  @override
  final String wireName = 'Beyond';

  @override
  Iterable serialize(Serializers serializers, Beyond object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Beyond deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BeyondBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BloomSerializer implements StructuredSerializer<Bloom> {
  @override
  final Iterable<Type> types = const [Bloom, _$Bloom];
  @override
  final String wireName = 'Bloom';

  @override
  Iterable serialize(Serializers serializers, Bloom object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Bloom deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BloomBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BulbSerializer implements StructuredSerializer<Bulb> {
  @override
  final Iterable<Type> types = const [Bulb, _$Bulb];
  @override
  final String wireName = 'Bulb';

  @override
  Iterable serialize(Serializers serializers, Bulb object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Bulb deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BulbBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DownLightSerializer implements StructuredSerializer<DownLight> {
  @override
  final Iterable<Type> types = const [DownLight, _$DownLight];
  @override
  final String wireName = 'DownLight';

  @override
  Iterable serialize(Serializers serializers, DownLight object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  DownLight deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DownLightBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EntitySerializer implements StructuredSerializer<Entity> {
  @override
  final Iterable<Type> types = const [Entity, _$Entity];
  @override
  final String wireName = 'Entity';

  @override
  Iterable serialize(Serializers serializers, Entity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Entity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntityBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GoSerializer implements StructuredSerializer<Go> {
  @override
  final Iterable<Type> types = const [Go, _$Go];
  @override
  final String wireName = 'Go';

  @override
  Iterable serialize(Serializers serializers, Go object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Go deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImpulseSerializer implements StructuredSerializer<Impulse> {
  @override
  final Iterable<Type> types = const [Impulse, _$Impulse];
  @override
  final String wireName = 'Impulse';

  @override
  Iterable serialize(Serializers serializers, Impulse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Impulse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImpulseBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IrisSerializer implements StructuredSerializer<Iris> {
  @override
  final Iterable<Type> types = const [Iris, _$Iris];
  @override
  final String wireName = 'Iris';

  @override
  Iterable serialize(Serializers serializers, Iris object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Iris deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IrisBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LightStripSerializer implements StructuredSerializer<LightStrip> {
  @override
  final Iterable<Type> types = const [LightStrip, _$LightStrip];
  @override
  final String wireName = 'LightStrip';

  @override
  Iterable serialize(Serializers serializers, LightStrip object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LightStrip deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LightStripBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhoenixSerializer implements StructuredSerializer<Phoenix> {
  @override
  final Iterable<Type> types = const [Phoenix, _$Phoenix];
  @override
  final String wireName = 'Phoenix';

  @override
  Iterable serialize(Serializers serializers, Phoenix object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Phoenix deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhoenixBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SpotSerializer implements StructuredSerializer<Spot> {
  @override
  final Iterable<Type> types = const [Spot, _$Spot];
  @override
  final String wireName = 'Spot';

  @override
  Iterable serialize(Serializers serializers, Spot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Spot deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpotBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StoryLightSerializer implements StructuredSerializer<StoryLight> {
  @override
  final Iterable<Type> types = const [StoryLight, _$StoryLight];
  @override
  final String wireName = 'StoryLight';

  @override
  Iterable serialize(Serializers serializers, StoryLight object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  StoryLight deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoryLightBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WhiteSerializer implements StructuredSerializer<White> {
  @override
  final Iterable<Type> types = const [White, _$White];
  @override
  final String wireName = 'White';

  @override
  Iterable serialize(Serializers serializers, White object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  White deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WhiteBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UnknownLightSerializer implements StructuredSerializer<UnknownLight> {
  @override
  final Iterable<Type> types = const [UnknownLight, _$UnknownLight];
  @override
  final String wireName = 'UnknownLight';

  @override
  Iterable serialize(Serializers serializers, UnknownLight object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(LightState)));
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
    if (object.manufacturerName != null) {
      result
        ..add('manufacturername')
        ..add(serializers.serialize(object.manufacturerName,
            specifiedType: const FullType(String)));
    }
    if (object.luminaireUniqueId != null) {
      result
        ..add('luminaireuniqueid')
        ..add(serializers.serialize(object.luminaireUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.swVersion != null) {
      result
        ..add('swversion')
        ..add(serializers.serialize(object.swVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  UnknownLight deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnknownLightBuilder();

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
        case 'state':
          result.state.replace(serializers.deserialize(value,
              specifiedType: const FullType(LightState)) as LightState);
          break;
        case 'modelid':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueid':
          result.uniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturername':
          result.manufacturerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'luminaireuniqueid':
          result.luminaireUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swversion':
          result.swVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

abstract class LightBuilder {
  void replace(Light other);
  void update(void updates(LightBuilder b));
  int get id;
  set id(int id);

  String get type;
  set type(String type);

  String get name;
  set name(String name);

  LightStateBuilder get state;
  set state(LightStateBuilder state);

  String get modelId;
  set modelId(String modelId);

  String get uniqueId;
  set uniqueId(String uniqueId);

  String get manufacturerName;
  set manufacturerName(String manufacturerName);

  String get luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId);

  String get swVersion;
  set swVersion(String swVersion);
}

class _$LightState extends LightState {
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
  final bool reachable;
  @override
  final String mode;

  factory _$LightState([void updates(LightStateBuilder b)]) =>
      (new LightStateBuilder()..update(updates)).build();

  _$LightState._(
      {this.on,
      this.brightness,
      this.hue,
      this.saturation,
      this.xy,
      this.ct,
      this.alert,
      this.effect,
      this.colorMode,
      this.reachable,
      this.mode})
      : super._();

  @override
  LightState rebuild(void updates(LightStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LightStateBuilder toBuilder() => new LightStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LightState &&
        on == other.on &&
        brightness == other.brightness &&
        hue == other.hue &&
        saturation == other.saturation &&
        xy == other.xy &&
        ct == other.ct &&
        alert == other.alert &&
        effect == other.effect &&
        colorMode == other.colorMode &&
        reachable == other.reachable &&
        mode == other.mode;
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
            reachable.hashCode),
        mode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LightState')
          ..add('on', on)
          ..add('brightness', brightness)
          ..add('hue', hue)
          ..add('saturation', saturation)
          ..add('xy', xy)
          ..add('ct', ct)
          ..add('alert', alert)
          ..add('effect', effect)
          ..add('colorMode', colorMode)
          ..add('reachable', reachable)
          ..add('mode', mode))
        .toString();
  }
}

class LightStateBuilder implements Builder<LightState, LightStateBuilder> {
  _$LightState _$v;

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

  bool _reachable;
  bool get reachable => _$this._reachable;
  set reachable(bool reachable) => _$this._reachable = reachable;

  String _mode;
  String get mode => _$this._mode;
  set mode(String mode) => _$this._mode = mode;

  LightStateBuilder();

  LightStateBuilder get _$this {
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
      _reachable = _$v.reachable;
      _mode = _$v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LightState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LightState;
  }

  @override
  void update(void updates(LightStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LightState build() {
    _$LightState _$result;
    try {
      _$result = _$v ??
          new _$LightState._(
              on: on,
              brightness: brightness,
              hue: hue,
              saturation: saturation,
              xy: _xy?.build(),
              ct: ct,
              alert: alert,
              effect: effect,
              colorMode: colorMode,
              reachable: reachable,
              mode: mode);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'xy';
        _xy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LightState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ambiance extends Ambiance {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Ambiance([void updates(AmbianceBuilder b)]) =>
      (new AmbianceBuilder()..update(updates)).build();

  _$Ambiance._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Ambiance rebuild(void updates(AmbianceBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AmbianceBuilder toBuilder() => new AmbianceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ambiance &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ambiance')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class AmbianceBuilder
    implements Builder<Ambiance, AmbianceBuilder>, LightBuilder {
  _$Ambiance _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  AmbianceBuilder();

  AmbianceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Ambiance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Ambiance;
  }

  @override
  void update(void updates(AmbianceBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Ambiance build() {
    _$Ambiance _$result;
    try {
      _$result = _$v ??
          new _$Ambiance._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Ambiance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Aura extends Aura {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Aura([void updates(AuraBuilder b)]) =>
      (new AuraBuilder()..update(updates)).build();

  _$Aura._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Aura rebuild(void updates(AuraBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuraBuilder toBuilder() => new AuraBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Aura &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Aura')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class AuraBuilder implements Builder<Aura, AuraBuilder>, LightBuilder {
  _$Aura _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  AuraBuilder();

  AuraBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Aura other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Aura;
  }

  @override
  void update(void updates(AuraBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Aura build() {
    _$Aura _$result;
    try {
      _$result = _$v ??
          new _$Aura._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Aura', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Beyond extends Beyond {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Beyond([void updates(BeyondBuilder b)]) =>
      (new BeyondBuilder()..update(updates)).build();

  _$Beyond._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Beyond rebuild(void updates(BeyondBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BeyondBuilder toBuilder() => new BeyondBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Beyond &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Beyond')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class BeyondBuilder implements Builder<Beyond, BeyondBuilder>, LightBuilder {
  _$Beyond _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  BeyondBuilder();

  BeyondBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Beyond other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Beyond;
  }

  @override
  void update(void updates(BeyondBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Beyond build() {
    _$Beyond _$result;
    try {
      _$result = _$v ??
          new _$Beyond._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Beyond', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Bloom extends Bloom {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Bloom([void updates(BloomBuilder b)]) =>
      (new BloomBuilder()..update(updates)).build();

  _$Bloom._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Bloom rebuild(void updates(BloomBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BloomBuilder toBuilder() => new BloomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bloom &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Bloom')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class BloomBuilder implements Builder<Bloom, BloomBuilder>, LightBuilder {
  _$Bloom _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  BloomBuilder();

  BloomBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Bloom other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Bloom;
  }

  @override
  void update(void updates(BloomBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Bloom build() {
    _$Bloom _$result;
    try {
      _$result = _$v ??
          new _$Bloom._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Bloom', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Bulb extends Bulb {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Bulb([void updates(BulbBuilder b)]) =>
      (new BulbBuilder()..update(updates)).build();

  _$Bulb._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Bulb rebuild(void updates(BulbBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BulbBuilder toBuilder() => new BulbBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bulb &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Bulb')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class BulbBuilder implements Builder<Bulb, BulbBuilder>, LightBuilder {
  _$Bulb _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  BulbBuilder();

  BulbBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Bulb other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Bulb;
  }

  @override
  void update(void updates(BulbBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Bulb build() {
    _$Bulb _$result;
    try {
      _$result = _$v ??
          new _$Bulb._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Bulb', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DownLight extends DownLight {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$DownLight([void updates(DownLightBuilder b)]) =>
      (new DownLightBuilder()..update(updates)).build();

  _$DownLight._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  DownLight rebuild(void updates(DownLightBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DownLightBuilder toBuilder() => new DownLightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownLight &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DownLight')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class DownLightBuilder
    implements Builder<DownLight, DownLightBuilder>, LightBuilder {
  _$DownLight _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  DownLightBuilder();

  DownLightBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DownLight other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DownLight;
  }

  @override
  void update(void updates(DownLightBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DownLight build() {
    _$DownLight _$result;
    try {
      _$result = _$v ??
          new _$DownLight._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DownLight', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Entity extends Entity {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Entity([void updates(EntityBuilder b)]) =>
      (new EntityBuilder()..update(updates)).build();

  _$Entity._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Entity rebuild(void updates(EntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityBuilder toBuilder() => new EntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Entity &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Entity')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class EntityBuilder implements Builder<Entity, EntityBuilder>, LightBuilder {
  _$Entity _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  EntityBuilder();

  EntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Entity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Entity;
  }

  @override
  void update(void updates(EntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Entity build() {
    _$Entity _$result;
    try {
      _$result = _$v ??
          new _$Entity._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Entity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Go extends Go {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Go([void updates(GoBuilder b)]) =>
      (new GoBuilder()..update(updates)).build();

  _$Go._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Go rebuild(void updates(GoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GoBuilder toBuilder() => new GoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Go &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Go')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class GoBuilder implements Builder<Go, GoBuilder>, LightBuilder {
  _$Go _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  GoBuilder();

  GoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Go other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Go;
  }

  @override
  void update(void updates(GoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Go build() {
    _$Go _$result;
    try {
      _$result = _$v ??
          new _$Go._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Go', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Impulse extends Impulse {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Impulse([void updates(ImpulseBuilder b)]) =>
      (new ImpulseBuilder()..update(updates)).build();

  _$Impulse._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Impulse rebuild(void updates(ImpulseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ImpulseBuilder toBuilder() => new ImpulseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Impulse &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Impulse')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class ImpulseBuilder implements Builder<Impulse, ImpulseBuilder>, LightBuilder {
  _$Impulse _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  ImpulseBuilder();

  ImpulseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Impulse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Impulse;
  }

  @override
  void update(void updates(ImpulseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Impulse build() {
    _$Impulse _$result;
    try {
      _$result = _$v ??
          new _$Impulse._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Impulse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Iris extends Iris {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Iris([void updates(IrisBuilder b)]) =>
      (new IrisBuilder()..update(updates)).build();

  _$Iris._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Iris rebuild(void updates(IrisBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  IrisBuilder toBuilder() => new IrisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Iris &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Iris')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class IrisBuilder implements Builder<Iris, IrisBuilder>, LightBuilder {
  _$Iris _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  IrisBuilder();

  IrisBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Iris other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Iris;
  }

  @override
  void update(void updates(IrisBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Iris build() {
    _$Iris _$result;
    try {
      _$result = _$v ??
          new _$Iris._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Iris', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LightStrip extends LightStrip {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$LightStrip([void updates(LightStripBuilder b)]) =>
      (new LightStripBuilder()..update(updates)).build();

  _$LightStrip._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  LightStrip rebuild(void updates(LightStripBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LightStripBuilder toBuilder() => new LightStripBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LightStrip &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LightStrip')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class LightStripBuilder
    implements Builder<LightStrip, LightStripBuilder>, LightBuilder {
  _$LightStrip _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  LightStripBuilder();

  LightStripBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LightStrip other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LightStrip;
  }

  @override
  void update(void updates(LightStripBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LightStrip build() {
    _$LightStrip _$result;
    try {
      _$result = _$v ??
          new _$LightStrip._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LightStrip', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Phoenix extends Phoenix {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Phoenix([void updates(PhoenixBuilder b)]) =>
      (new PhoenixBuilder()..update(updates)).build();

  _$Phoenix._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Phoenix rebuild(void updates(PhoenixBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhoenixBuilder toBuilder() => new PhoenixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phoenix &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Phoenix')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class PhoenixBuilder implements Builder<Phoenix, PhoenixBuilder>, LightBuilder {
  _$Phoenix _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  PhoenixBuilder();

  PhoenixBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Phoenix other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Phoenix;
  }

  @override
  void update(void updates(PhoenixBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Phoenix build() {
    _$Phoenix _$result;
    try {
      _$result = _$v ??
          new _$Phoenix._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Phoenix', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Spot extends Spot {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$Spot([void updates(SpotBuilder b)]) =>
      (new SpotBuilder()..update(updates)).build();

  _$Spot._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  Spot rebuild(void updates(SpotBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotBuilder toBuilder() => new SpotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Spot &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Spot')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class SpotBuilder implements Builder<Spot, SpotBuilder>, LightBuilder {
  _$Spot _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  SpotBuilder();

  SpotBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Spot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Spot;
  }

  @override
  void update(void updates(SpotBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Spot build() {
    _$Spot _$result;
    try {
      _$result = _$v ??
          new _$Spot._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Spot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$StoryLight extends StoryLight {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$StoryLight([void updates(StoryLightBuilder b)]) =>
      (new StoryLightBuilder()..update(updates)).build();

  _$StoryLight._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  StoryLight rebuild(void updates(StoryLightBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StoryLightBuilder toBuilder() => new StoryLightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoryLight &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoryLight')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class StoryLightBuilder
    implements Builder<StoryLight, StoryLightBuilder>, LightBuilder {
  _$StoryLight _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  StoryLightBuilder();

  StoryLightBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StoryLight other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StoryLight;
  }

  @override
  void update(void updates(StoryLightBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StoryLight build() {
    _$StoryLight _$result;
    try {
      _$result = _$v ??
          new _$StoryLight._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StoryLight', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$White extends White {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$White([void updates(WhiteBuilder b)]) =>
      (new WhiteBuilder()..update(updates)).build();

  _$White._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  White rebuild(void updates(WhiteBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WhiteBuilder toBuilder() => new WhiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is White &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('White')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class WhiteBuilder implements Builder<White, WhiteBuilder>, LightBuilder {
  _$White _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  WhiteBuilder();

  WhiteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant White other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$White;
  }

  @override
  void update(void updates(WhiteBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$White build() {
    _$White _$result;
    try {
      _$result = _$v ??
          new _$White._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'White', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UnknownLight extends UnknownLight {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final LightState state;
  @override
  final String modelId;
  @override
  final String uniqueId;
  @override
  final String manufacturerName;
  @override
  final String luminaireUniqueId;
  @override
  final String swVersion;

  factory _$UnknownLight([void updates(UnknownLightBuilder b)]) =>
      (new UnknownLightBuilder()..update(updates)).build();

  _$UnknownLight._(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.modelId,
      this.uniqueId,
      this.manufacturerName,
      this.luminaireUniqueId,
      this.swVersion})
      : super._();

  @override
  UnknownLight rebuild(void updates(UnknownLightBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UnknownLightBuilder toBuilder() => new UnknownLightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnknownLight &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        modelId == other.modelId &&
        uniqueId == other.uniqueId &&
        manufacturerName == other.manufacturerName &&
        luminaireUniqueId == other.luminaireUniqueId &&
        swVersion == other.swVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), type.hashCode),
                                name.hashCode),
                            state.hashCode),
                        modelId.hashCode),
                    uniqueId.hashCode),
                manufacturerName.hashCode),
            luminaireUniqueId.hashCode),
        swVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnknownLight')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('modelId', modelId)
          ..add('uniqueId', uniqueId)
          ..add('manufacturerName', manufacturerName)
          ..add('luminaireUniqueId', luminaireUniqueId)
          ..add('swVersion', swVersion))
        .toString();
  }
}

class UnknownLightBuilder
    implements Builder<UnknownLight, UnknownLightBuilder>, LightBuilder {
  _$UnknownLight _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LightStateBuilder _state;
  LightStateBuilder get state => _$this._state ??= new LightStateBuilder();
  set state(LightStateBuilder state) => _$this._state = state;

  String _modelId;
  String get modelId => _$this._modelId;
  set modelId(String modelId) => _$this._modelId = modelId;

  String _uniqueId;
  String get uniqueId => _$this._uniqueId;
  set uniqueId(String uniqueId) => _$this._uniqueId = uniqueId;

  String _manufacturerName;
  String get manufacturerName => _$this._manufacturerName;
  set manufacturerName(String manufacturerName) =>
      _$this._manufacturerName = manufacturerName;

  String _luminaireUniqueId;
  String get luminaireUniqueId => _$this._luminaireUniqueId;
  set luminaireUniqueId(String luminaireUniqueId) =>
      _$this._luminaireUniqueId = luminaireUniqueId;

  String _swVersion;
  String get swVersion => _$this._swVersion;
  set swVersion(String swVersion) => _$this._swVersion = swVersion;

  UnknownLightBuilder();

  UnknownLightBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _name = _$v.name;
      _state = _$v.state?.toBuilder();
      _modelId = _$v.modelId;
      _uniqueId = _$v.uniqueId;
      _manufacturerName = _$v.manufacturerName;
      _luminaireUniqueId = _$v.luminaireUniqueId;
      _swVersion = _$v.swVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UnknownLight other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UnknownLight;
  }

  @override
  void update(void updates(UnknownLightBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UnknownLight build() {
    _$UnknownLight _$result;
    try {
      _$result = _$v ??
          new _$UnknownLight._(
              id: id,
              type: type,
              name: name,
              state: _state?.build(),
              modelId: modelId,
              uniqueId: uniqueId,
              manufacturerName: manufacturerName,
              luminaireUniqueId: luminaireUniqueId,
              swVersion: swVersion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UnknownLight', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
