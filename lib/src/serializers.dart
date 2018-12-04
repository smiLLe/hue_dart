import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hue_dart/src/light/light.dart';
import 'package:hue_dart/src/resource_link/resource_link.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ResourceLink,
  Ambiance,
  Aura,
  Beyond,
  Bloom,
  Bulb,
  DownLight,
  Entity,
  Go,
  Impulse,
  Iris,
  LightStrip,
  Phoenix,
  Spot,
  StoryLight,
  White,
  UnknownLight,
  LightState,
])
final Serializers serializers = _$serializers;

final standardSerializers =
    (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
