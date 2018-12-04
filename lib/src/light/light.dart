import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:hue_dart/src/core/bridge_object.dart';
import 'package:hue_dart/src/core/color_helper.dart';
import 'package:hue_dart/src/serializers.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:built_value/built_value.dart';
import 'package:hue_dart/src/serializers.dart';

part 'light.g.dart';

@BuiltValue(instantiable: false)
abstract class Light extends Object with BridgeObject {
  /// id of the light in the bridge
  @nullable
  int get id;

  /// A fixed name describing the type of light e.g. “Extended color light”.
  @nullable
  String get type;

  /// A unique, editable name given to the light.
  @nullable
  String get name;

  @nullable
  LightState get state;

  @BuiltValueField(wireName: 'modelid')
  @nullable
  String get modelId;

  /// As of 1.4. Unique id of the device. The MAC address of the device with a unique endpoint id in the form: AA:BB:CC:DD:EE:FF:00:11-XX
  @BuiltValueField(wireName: 'uniqueid')
  @nullable
  String get uniqueId;

  /// As of 1.7. The manufacturer name.
  @BuiltValueField(wireName: 'manufacturername')
  @nullable
  String get manufacturerName;

  /// As of 1.9. Unique ID of the luminaire the light is a part of in the format: AA:BB:CC:DD-XX-YY.  AA:BB:, ... represents the hex of the luminaireid, XX the lightsource position (incremental but may contain gaps) and YY the lightpoint position (index of light in luminaire group).  A gap in the lightpoint position indicates an incomplete luminaire (light search required to discover missing light points in this case).
  @BuiltValueField(wireName: 'luminaireuniqueid')
  @nullable
  String get luminaireUniqueId;

  /// An identifier for the software version running on the light.
  @BuiltValueField(wireName: 'swversion')
  @nullable
  String get swVersion;

  Light rebuild(void updates(LightBuilder b));
  LightBuilder toBuilder();

  String productName() => '';
}

abstract class LightState
    with BridgeObject
    implements Built<LightState, LightStateBuilder> {
  static Serializer<LightState> get serializer => _$lightStateSerializer;

  /// On/Off state of the light. On=true, Off=false.
  @nullable
  bool get on;

  /// Brightness of the light. This is a scale from the minimum brightness the light is capable of, 1, to the maximum capable brightness, 254.
  @BuiltValueField(wireName: 'bri')
  @nullable
  int get brightness;

  /// Hue of the light. This is a wrapping value between 0 and 65535. Both 0 and 65535 are red, 25500 is green and 46920 is blue.
  @BuiltValueField(wireName: 'hue')
  @nullable
  int get hue;

  /// Saturation of the light. 254 is the most saturated (colored) and 0 is the least saturated (white).
  @BuiltValueField(wireName: 'sat')
  @nullable
  int get saturation;

  /// The x,y coordinate of a color in CIE color space.
  @nullable
  BuiltList<num> get xy;

  /// The Mired Color temperature of the light. 2012 connected lights are capable of 153 (6500K) to 500 (2000K).
  @nullable
  int get ct;

  /// The alert effect, which is a temporary change to the bulb’s state. This can take one of the following values:
  ///
  /// “none” – The light is not performing an alert effect.
  /// “select” – The light is performing one breathe cycle.
  /// “lselect” – The light is performing breathe cycles for 15 seconds or until an "alert": "none" command is received.
  /// Note that this contains the last alert sent to the light and not its current state. i.e. After the breathe cycle has finished the bridge does not reset the alert to "none".
  @nullable
  String get alert;

  /// The dynamic effect of the light, can either be “none” or “colorloop”. If set to colorloop, the light will cycle through all hues using the current brightness and saturation settings.
  @nullable
  String get effect;

  /// Indicates the color mode in which the light is working, this is the last command type it received. Values are “hs” for Hue and Saturation, “xy” for XY and “ct” for Color Temperature. This parameter is only present when the light supports at least one of the values.
  @nullable
  @BuiltValueField(wireName: 'colormode')
  String get colorMode;

  /// Indicates if a light can be reached by the bridge.
  @nullable
  bool get reachable;

  @nullable
  String get mode;

  LightState._();
  factory LightState([updates(LightStateBuilder b)]) = _$LightState;

  @override
  Map<String, dynamic> toBridgeObject({String action}) {
    Map<String, dynamic> body = {};
    if (on != null) {
      body['on'] = on;
    }
    if (brightness != null) {
      body['bri'] = brightness;
    }
    if (hue != null) {
      body['hue'] = hue;
    }
    if (saturation != null) {
      body['sat'] = saturation;
    }
    if (effect != null) {
      body['effect'] = effect;
    }
    if (xy != null) {
      body['xy'] = xy.toList();
    }
    if (ct != null) {
      body['ct'] = ct;
    }
    if (alert != null) {
      body['alert'] = alert;
    }
    return body;
  }

  /// get the current color of the light in all possible means by the bridge
  HueColor get colors {
    final colorHelper = new ColorHelper();
    if (colorMode == 'ct') {
      return colorHelper.ctToRGB(ct);
    } else if (colorMode == 'hs') {
      return colorHelper.hueSaturationBrightnessToRGB(
          hue, saturation, brightness);
    } else if (colorMode == 'xy') {
      return colorHelper.xyToRGB(xy[0], xy[1], brightness);
    }

    dynamic toJson() =>
        standardSerializers.serializeWith(LightState.serializer, this);
  }

  /// change the color of the light on the bridge with rgb values ranging from 0 to 1
  LightState changeColor({num red = 0, num green = 0, num blue = 0}) {
    final colorHelper = new ColorHelper();
    if (colorMode == 'ct') {
      HueColor colors = colorHelper.rgbToCT(red, green, blue);
      return this.rebuild((b) => b..ct = colors.ct.toInt());
    } else if (colorMode == 'hs') {
      HueColor colors =
          colorHelper.rgbToHueSaturationBrightness(red, green, blue);
      return this.rebuild((b) => b
        ..hue = colors.hue.toInt()
        ..saturation = colors.saturation.toInt()
        ..brightness = colors.brightness.toInt());
    } else if (colorMode == 'xy') {
      HueColor colors = colorHelper.rgbToXY(red, green, blue);
      return this.rebuild((b) => b..xy.replace(colors.xy));
    }
  }
}

abstract class Ambiance implements Light, Built<Ambiance, AmbianceBuilder> {
  static Serializer<Ambiance> get serializer => _$ambianceSerializer;
  Ambiance._();
  factory Ambiance([updates(AmbianceBuilder b)]) = _$Ambiance;

  @override
  String productName() => 'Ambiance Pendant';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(Ambiance.serializer, this);
}

abstract class Aura implements Light, Built<Aura, AuraBuilder> {
  static Serializer<Aura> get serializer => _$auraSerializer;
  Aura._();
  factory Aura([updates(AuraBuilder b)]) = _$Aura;

  @override
  String productName() => 'Living Colors Gen3 Aura';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(Aura.serializer, this);
}

abstract class Beyond implements Light, Built<Beyond, BeyondBuilder> {
  static Serializer<Beyond> get serializer => _$beyondSerializer;
  Beyond._();
  factory Beyond([updates(BeyondBuilder b)]) = _$Beyond;

  @override
  String productName() {
    String productName = 'Hue Beyond Table';
    if ('HBL002' == modelId) {
      productName = 'Hue Beyond Pendant';
    } else if ('HBL003' == modelId) {
      productName = 'Hue Beyond Ceiling';
    }
    return productName;
  }

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(Beyond.serializer, this);
}

abstract class Bloom implements Light, Built<Bloom, BloomBuilder> {
  static Serializer<Bloom> get serializer => _$bloomSerializer;
  Bloom._();
  factory Bloom([updates(BloomBuilder b)]) = _$Bloom;

  @override
  String productName() => 'Hue Living Colors Bloom';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(Bloom.serializer, this);
}

abstract class Bulb implements Light, Built<Bulb, BulbBuilder> {
  static Serializer<Bulb> get serializer => _$bulbSerializer;
  Bulb._();
  factory Bulb([updates(BulbBuilder b)]) = _$Bulb;

  @override
  String productName() {
    String productName = "Hue bulb A19";
    if (LightFactory.isLuxBulbModel(modelId)) {
      productName = "Hue A19 Lux";
    } else if (LightFactory.isAmbianceBulbModel(modelId)) {
      productName = "Hue A19 White Ambiance";
    } else if (LightFactory.isWhiteBulbModel(modelId)) {
      productName = "Hue white lamp";
    }
    return productName;
  }

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(Bulb.serializer, this);
}

abstract class DownLight implements Light, Built<DownLight, DownLightBuilder> {
  static Serializer<DownLight> get serializer => _$downLightSerializer;
  DownLight._();
  factory DownLight([updates(DownLightBuilder b)]) = _$DownLight;

  @override
  String productName() => 'LCT002' == modelId ? 'Hue Spot BR30' : 'Hue BR30';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(DownLight.serializer, this);
}

abstract class Entity implements Light, Built<Entity, EntityBuilder> {
  static Serializer<Entity> get serializer => _$entitySerializer;
  Entity._();
  factory Entity([updates(EntityBuilder b)]) = _$Entity;

  @override
  String productName() =>
      'HEL001' == modelId ? 'Hue Entity Table' : 'Hue Entity Pendant';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(Entity.serializer, this);
}

abstract class Go implements Light, Built<Go, GoBuilder> {
  static Serializer<Go> get serializer => _$goSerializer;
  Go._();
  factory Go([updates(GoBuilder b)]) = _$Go;

  @override
  String productName() => 'Hue Go';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(Go.serializer, this);
}

abstract class Impulse implements Light, Built<Impulse, ImpulseBuilder> {
  static Serializer<Impulse> get serializer => _$impulseSerializer;
  Impulse._();
  factory Impulse([updates(ImpulseBuilder b)]) = _$Impulse;

  @override
  String productName() =>
      'HIL001' == modelId ? 'Hue Impulse Table' : 'Hue Impulse Pendant';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(Impulse.serializer, this);
}

abstract class Iris implements Light, Built<Iris, IrisBuilder> {
  static Serializer<Iris> get serializer => _$irisSerializer;
  Iris._();
  factory Iris([updates(IrisBuilder b)]) = _$Iris;

  @override
  String productName() => 'Hue Living Colors Iris';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(Iris.serializer, this);
}

abstract class LightStrip
    implements Light, Built<LightStrip, LightStripBuilder> {
  static Serializer<LightStrip> get serializer => _$lightStripSerializer;
  LightStrip._();
  factory LightStrip([updates(LightStripBuilder b)]) = _$LightStrip;

  @override
  String productName() =>
      'LST001' == modelId ? 'Hue LightStrip' : 'Hue LightStrip Plus';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(LightStrip.serializer, this);
}

abstract class Phoenix implements Light, Built<Phoenix, PhoenixBuilder> {
  static Serializer<Phoenix> get serializer => _$phoenixSerializer;
  Phoenix._();
  factory Phoenix([updates(PhoenixBuilder b)]) = _$Phoenix;

  @override
  String productName() {
    Map<String, String> mapping = {
      "HML001": "Centerpiece",
      "HML002": "Ceiling",
      "HML003": "Pendant",
      "HML004": "Wall",
      "HML005": "Table",
      "HML006": "Downlight"
    };
    return "Hue Phoenix ${mapping[modelId]}";
  }

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(Phoenix.serializer, this);
}

abstract class Spot implements Light, Built<Spot, SpotBuilder> {
  static Serializer<Spot> get serializer => _$spotSerializer;
  Spot._();
  factory Spot([updates(SpotBuilder b)]) = _$Spot;

  @override
  String productName() =>
      'LCT003' == modelId ? 'Hue Spot GU10' : 'Hue Spot GU10 White Ambiance';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(Spot.serializer, this);
}

abstract class StoryLight
    implements Light, Built<StoryLight, StoryLightBuilder> {
  static Serializer<StoryLight> get serializer => _$storyLightSerializer;
  StoryLight._();
  factory StoryLight([updates(StoryLightBuilder b)]) = _$StoryLight;

  @override
  String productName() => 'Disney Living Colors';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(StoryLight.serializer, this);
}

abstract class White implements Light, Built<White, WhiteBuilder> {
  static Serializer<White> get serializer => _$whiteSerializer;
  White._();
  factory White([updates(WhiteBuilder b)]) = _$White;

  @override
  String productName() => 'White';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() => standardSerializers.serializeWith(White.serializer, this);
}

abstract class UnknownLight
    implements Light, Built<UnknownLight, UnknownLightBuilder> {
  static Serializer<UnknownLight> get serializer => _$unknownLightSerializer;
  UnknownLight._();
  factory UnknownLight([updates(UnknownLightBuilder b)]) = _$UnknownLight;

  @override
  String productName() => 'Unknown';

  @override
  toBridgeObject({String action}) {
    if ('attributes' == action) {
      return {
        'name': name,
      };
    } else if ('state' == action) {
      return state.toBridgeObject();
    }
  }

  dynamic toJson() =>
      standardSerializers.serializeWith(UnknownLight.serializer, this);
}

//@JsonSerializable()
//class Light extends Object with _$LightSerializerMixin, BridgeObject {
//  /// id of the light in the bridge
//  int id;
//
//  /// A fixed name describing the type of light e.g. “Extended color light”.
//  String type;
//
//  /// A unique, editable name given to the light.
//  String name;
//
//  LightState state = new LightState();
//
//  /// The hardware model of the light.
//  @JsonKey(name: 'modelid')
//  String modelId;
//
//  /// As of 1.4. Unique id of the device. The MAC address of the device with a unique endpoint id in the form: AA:BB:CC:DD:EE:FF:00:11-XX
//  @JsonKey(name: 'uniqueid')
//  String uniqueId;
//
//  /// As of 1.7. The manufacturer name.
//  @JsonKey(name: 'manufacturername')
//  String manufacturerName;
//
//  /// As of 1.9. Unique ID of the luminaire the light is a part of in the format: AA:BB:CC:DD-XX-YY.  AA:BB:, ... represents the hex of the luminaireid, XX the lightsource position (incremental but may contain gaps) and YY the lightpoint position (index of light in luminaire group).  A gap in the lightpoint position indicates an incomplete luminaire (light search required to discover missing light points in this case).
//  @JsonKey(name: 'luminaireuniqueid')
//  String luminaireUniqueId;
//
//  /// An identifier for the software version running on the light.
//  @JsonKey(name: 'swversion')
//  String swVersion;
//
//  @JsonKey(ignore: true)
//  HueColor color = new HueColor();
//
//  Light();
//
//  Light.withLight(Light light) {
//    id = light.id;
//    type = light.type;
//    name = light.name;
//    state = light.state;
//    modelId = light.modelId;
//    uniqueId = light.uniqueId;
//    manufacturerName = light.manufacturerName;
//    luminaireUniqueId = light.luminaireUniqueId;
//    swVersion = light.swVersion;
//  }
//
//  factory Light.fromJson(Map<String, dynamic> json) {
//    final light = _$LightFromJson(json);
//    return _LightFactory.create(light);
//  }
//
//  Light.withId(String id) {
//    this.id = int.parse(id);
//  }
//
//  @override
//  String toString() {
//    return toJson().toString();
//  }
//
//  @override
//  toBridgeObject({String action}) {
//    if ('attributes' == action) {
//      return {
//        'name': name,
//      };
//    } else if ('state' == action) {
//      return state.toBridgeObject();
//    }
//  }
//
//  String productName() => 'Hue color lamp';
//
//  /// change the color of the light on the bridge with rgb values ranging from 0 to 1
//  void changeColor({num red = 0, num green = 0, num blue = 0}) {
//    final colorHelper = new ColorHelper();
//    if (state.colorMode == 'ct') {
//      HueColor colors = colorHelper.rgbToCT(red, green, blue);
//      state.ct = colors.ct.toInt();
//    } else if (state.colorMode == 'hs') {
//      HueColor colors =
//      colorHelper.rgbToHueSaturationBrightness(red, green, blue);
//      state.hue = colors.hue.toInt();
//      state.saturation = colors.saturation.toInt();
//      state.brightness = colors.brightness.toInt();
//    } else if (state.colorMode == 'xy') {
//      HueColor colors = colorHelper.rgbToXY(red, green, blue);
//      state.xy = colors.xy;
//    }
//  }
//
//  /// get the current color of the light in all possible means by the bridge
//  HueColor colors() {
//    final colorHelper = new ColorHelper();
//    if (state.colorMode == 'ct') {
//      color = colorHelper.ctToRGB(state.ct);
//    } else if (state.colorMode == 'hs') {
//      color = colorHelper.hueSaturationBrightnessToRGB(
//          state.hue, state.saturation, state.brightness);
//    } else if (state.colorMode == 'xy') {
//      color = colorHelper.xyToRGB(state.xy[0], state.xy[1], state.brightness);
//    }
//    return color;
//  }
//}
//
//@JsonSerializable()
//class LightState extends Object with _$LightStateSerializerMixin, BridgeObject {
//  /// On/Off state of the light. On=true, Off=false.
//  bool on;
//
//  /// Brightness of the light. This is a scale from the minimum brightness the light is capable of, 1, to the maximum capable brightness, 254.
//  @JsonKey(name: 'bri')
//  int brightness;
//
//  /// Hue of the light. This is a wrapping value between 0 and 65535. Both 0 and 65535 are red, 25500 is green and 46920 is blue.
//  @JsonKey(name: 'hue')
//  int hue;
//
//  /// Saturation of the light. 254 is the most saturated (colored) and 0 is the least saturated (white).
//  @JsonKey(name: 'sat')
//  int saturation;
//
//  /// The x,y coordinate of a color in CIE color space.
//  List<num> xy;
//
//  /// The Mired Color temperature of the light. 2012 connected lights are capable of 153 (6500K) to 500 (2000K).
//  int ct;
//
//  /// The alert effect, which is a temporary change to the bulb’s state. This can take one of the following values:
//  ///
//  /// “none” – The light is not performing an alert effect.
//  /// “select” – The light is performing one breathe cycle.
//  /// “lselect” – The light is performing breathe cycles for 15 seconds or until an "alert": "none" command is received.
//  /// Note that this contains the last alert sent to the light and not its current state. i.e. After the breathe cycle has finished the bridge does not reset the alert to "none".
//  String alert;
//
//  /// The dynamic effect of the light, can either be “none” or “colorloop”. If set to colorloop, the light will cycle through all hues using the current brightness and saturation settings.
//  String effect;
//
//  /// Indicates the color mode in which the light is working, this is the last command type it received. Values are “hs” for Hue and Saturation, “xy” for XY and “ct” for Color Temperature. This parameter is only present when the light supports at least one of the values.
//  @JsonKey(name: 'colormode')
//  String colorMode;
//
//  /// Indicates if a light can be reached by the bridge.
//  bool reachable;
//
//  String mode;
//
//  LightState();
//
//  factory LightState.fromJson(Map<String, dynamic> json) =>
//      _$LightStateFromJson(json);
//
//  @override
//  String toString() {
//    return toJson().toString();
//  }
//
//  @override
//  toBridgeObject({String action}) {
//    Map<String, dynamic> body = {};
//    if (on != null) {
//      body['on'] = on;
//    }
//    if (brightness != null) {
//      body['bri'] = brightness;
//    }
//    if (hue != null) {
//      body['hue'] = hue;
//    }
//    if (saturation != null) {
//      body['sat'] = saturation;
//    }
//    if (effect != null) {
//      body['effect'] = effect;
//    }
//    if (xy != null) {
//      body['xy'] = xy;
//    }
//    if (ct != null) {
//      body['ct'] = ct;
//    }
//    if (alert != null) {
//      body['alert'] = alert;
//    }
//    return body;
//  }
//}
//
//class Ambiance extends Light {
//  Ambiance._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'Ambiance Pendant';
//}
//
//class Aura extends Light {
//  Aura._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'Living Colors Gen3 Aura';
//}
//
//class Beyond extends Light {
//  Beyond._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() {
//    String productName = 'Hue Beyond Table';
//    if ('HBL002' == modelId) {
//      productName = 'Hue Beyond Pendant';
//    } else if ('HBL003' == modelId) {
//      productName = 'Hue Beyond Ceiling';
//    }
//    return productName;
//  }
//}
//
//class Bloom extends Light {
//  Bloom._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'Hue Living Colors Bloom';
//}
//
//class Bulb extends Light {
//  Bulb._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() {
//    String productName = "Hue bulb A19";
//    if (_LightFactory.isLuxBulbModel(modelId)) {
//      productName = "Hue A19 Lux";
//    } else if (_LightFactory.isAmbianceBulbModel(modelId)) {
//      productName = "Hue A19 White Ambiance";
//    } else if (_LightFactory.isWhiteBulbModel(modelId)) {
//      productName = "Hue white lamp";
//    }
//    return productName;
//  }
//}
//
//class DownLight extends Light {
//  DownLight._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'LCT002' == modelId ? 'Hue Spot BR30' : 'Hue BR30';
//}
//
//class Entity extends Light {
//  Entity._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() =>
//      'HEL001' == modelId ? 'Hue Entity Table' : 'Hue Entity Pendant';
//}
//
//class Go extends Light {
//  Go._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'Hue Go';
//}
//
//class Impulse extends Light {
//  Impulse._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() =>
//      'HIL001' == modelId ? 'Hue Impulse Table' : 'Hue Impulse Pendant';
//}
//
//class Iris extends Light {
//  Iris._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'Hue Living Colors Iris';
//}
//
//class LightStrip extends Light {
//  LightStrip._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() =>
//      'LST001' == modelId ? 'Hue LightStrip' : 'Hue LightStrip Plus';
//}
//
//class Phoenix extends Light {
//  Phoenix._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() {
//    Map<String, String> mapping = {
//      "HML001": "Centerpiece",
//      "HML002": "Ceiling",
//      "HML003": "Pendant",
//      "HML004": "Wall",
//      "HML005": "Table",
//      "HML006": "Downlight"
//    };
//    return "Hue Phoenix ${mapping[modelId]}";
//  }
//}
//
//class Spot extends Light {
//  Spot._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() =>
//      'LCT003' == modelId ? 'Hue Spot GU10' : 'Hue Spot GU10 White Ambiance';
//}
//
//class StoryLight extends Light {
//  StoryLight._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'Disney Living Colors';
//}
//
//class White extends Light {
//  White._withLight(Light light) : super.withLight(light);
//
//  @override
//  String productName() => 'White';
//}
//

class LightFactory {
  static Light create(Map<String, dynamic> item, [dynamic id]) {
    final _item = Map<String, dynamic>.from(item ?? {'modelid': ''});
    if (false == _item.containsKey('id')) {
      _item['id'] = id is! int ? int.parse(id) : id;
    } else {
      _item['id'] = _item['id'] is! int ? int.parse(_item['id']) : _item['id'];
    }

    String modelId = _item['modelid'];

    if (isAmbianceModel(modelId)) {
      return standardSerializers.deserializeWith(Ambiance.serializer, _item);
    } else if (isAuraModel(modelId)) {
      return standardSerializers.deserializeWith(Aura.serializer, _item);
    } else if (isBeyondModel(modelId)) {
      return standardSerializers.deserializeWith(Beyond.serializer, _item);
    } else if (isBloomModel(modelId)) {
      return standardSerializers.deserializeWith(Bloom.serializer, _item);
    } else if (isDefaultBulbModel(modelId) ||
        isLuxBulbModel(modelId) ||
        isAmbianceBulbModel(modelId) ||
        isWhiteBulbModel(modelId)) {
      return standardSerializers.deserializeWith(Bulb.serializer, _item);
    } else if (isDownLightModel(modelId)) {
      return standardSerializers.deserializeWith(DownLight.serializer, _item);
    } else if (isEntityModel(modelId)) {
      return standardSerializers.deserializeWith(Entity.serializer, _item);
    } else if (isGoModel(modelId)) {
      return standardSerializers.deserializeWith(Go.serializer, _item);
    } else if (isImpulseModel(modelId)) {
      return standardSerializers.deserializeWith(Impulse.serializer, _item);
    } else if (isIrisModel(modelId)) {
      return standardSerializers.deserializeWith(Iris.serializer, _item);
    } else if (isLightStripModel(modelId)) {
      return standardSerializers.deserializeWith(LightStrip.serializer, _item);
    } else if (isPhoenixModel(modelId)) {
      return standardSerializers.deserializeWith(Phoenix.serializer, _item);
    } else if (isSpotModel(modelId)) {
      return standardSerializers.deserializeWith(Spot.serializer, _item);
    } else if (isStoryLightModel(modelId)) {
      return standardSerializers.deserializeWith(StoryLight.serializer, _item);
    } else if (isWhiteModel(modelId)) {
      return standardSerializers.deserializeWith(White.serializer, _item);
    } else {
      return standardSerializers.deserializeWith(
          UnknownLight.serializer, _item);
    }
  }

  static bool isAmbianceModel(String modelId) => [
        'LTP001',
        'LTP002',
        'LTP003',
        'LTD003',
        'LDT001',
        'LTF002',
        'LTF001',
        'LTC001',
        'LTC002',
        'LTC003',
        'LTD001',
        'LTD002'
      ].contains(modelId);

  static bool isAuraModel(String modelId) => 'LLC014' == modelId;

  static bool isBeyondModel(String modelId) =>
      ['HBL001', 'HBL002', 'HBL003'].contains(modelId);

  static bool isBloomModel(String modelId) =>
      ['LLC005', 'LLC011', 'LLC012', 'LLC007'].contains(modelId);

  static bool isDefaultBulbModel(String modelId) =>
      ['LCT001', 'LCT007', 'LCT010', 'LCT014'].contains(modelId);

  static bool isLuxBulbModel(String modelId) =>
      ['LWB004', 'LWB006', 'LWB007'].contains(modelId);

  static bool isAmbianceBulbModel(String modelId) =>
      ['LTW010', 'LTW001', 'LTW004', 'LTW015'].contains(modelId);

  static bool isWhiteBulbModel(String modelId) =>
      ['LWB010', 'LWB014'].contains(modelId);

  static bool isDownLightModel(String modelId) =>
      ['LCT011', 'LTW011', 'LCT002'].contains(modelId);

  static bool isEntityModel(String modelId) =>
      ['HEL001', 'HEL002'].contains(modelId);

  static bool isGoModel(String modelId) => 'LLC020' == modelId;

  static bool isImpulseModel(String modelId) =>
      ['HIL001', 'HIL002'].contains(modelId);

  static bool isIrisModel(String modelId) =>
      ['LLC010', 'LLC006'].contains(modelId);

  static bool isLightStripModel(String modelId) =>
      ['LST001', 'LST002'].contains(modelId);

  static bool isPhoenixModel(String modelId) => [
        "HML001",
        "HML002",
        "HML003",
        "HML004",
        "HML005",
        "HML006"
      ].contains(modelId);

  static bool isSpotModel(String modelId) =>
      ['LCT003', 'LTW013', 'LTW014'].contains(modelId);

  static bool isStoryLightModel(String modelId) => 'LLC013' == modelId;

  static bool isWhiteModel(String modelId) =>
      ['LDF002', 'LDF001', 'LDD002', 'LDD001', 'MWM001'].contains(modelId);
}

//class _LightFactory {
//  static Light create(Light light) {
//    String modelId = light.modelId;
//    if (isAmbianceModel(modelId)) {
//      return new Ambiance._withLight(light);
//    } else if (isAuraModel(modelId)) {
//      return new Aura._withLight(light);
//    } else if (isBeyondModel(modelId)) {
//      return new Beyond._withLight(light);
//    } else if (isBloomModel(modelId)) {
//      return new Bloom._withLight(light);
//    } else if (isDefaultBulbModel(modelId) ||
//        isLuxBulbModel(modelId) ||
//        isAmbianceBulbModel(modelId) ||
//        isWhiteBulbModel(modelId)) {
//      return new Bulb._withLight(light);
//    } else if (isDownLightModel(modelId)) {
//      return new DownLight._withLight(light);
//    } else if (isEntityModel(modelId)) {
//      return new Entity._withLight(light);
//    } else if (isGoModel(modelId)) {
//      return new Go._withLight(light);
//    } else if (isImpulseModel(modelId)) {
//      return new Impulse._withLight(light);
//    } else if (isIrisModel(modelId)) {
//      return new Iris._withLight(light);
//    } else if (isLightStripModel(modelId)) {
//      return new LightStrip._withLight(light);
//    } else if (isPhoenixModel(modelId)) {
//      return new Phoenix._withLight(light);
//    } else if (isSpotModel(modelId)) {
//      return new Spot._withLight(light);
//    } else if (isStoryLightModel(modelId)) {
//      return new StoryLight._withLight(light);
//    } else if (isWhiteModel(modelId)) {
//      return new White._withLight(light);
//    }
//    return light;
//  }
//
//  static bool isAmbianceModel(String modelId) => [
//        'LTP001',
//        'LTP002',
//        'LTP003',
//        'LTD003',
//        'LDT001',
//        'LTF002',
//        'LTF001',
//        'LTC001',
//        'LTC002',
//        'LTC003',
//        'LTD001',
//        'LTD002'
//      ].contains(modelId);
//
//  static bool isAuraModel(String modelId) => 'LLC014' == modelId;
//
//  static bool isBeyondModel(String modelId) =>
//      ['HBL001', 'HBL002', 'HBL003'].contains(modelId);
//
//  static bool isBloomModel(String modelId) =>
//      ['LLC005', 'LLC011', 'LLC012', 'LLC007'].contains(modelId);
//
//  static bool isDefaultBulbModel(String modelId) =>
//      ['LCT001', 'LCT007', 'LCT010', 'LCT014'].contains(modelId);
//
//  static bool isLuxBulbModel(String modelId) =>
//      ['LWB004', 'LWB006', 'LWB007'].contains(modelId);
//
//  static bool isAmbianceBulbModel(String modelId) =>
//      ['LTW010', 'LTW001', 'LTW004', 'LTW015'].contains(modelId);
//
//  static bool isWhiteBulbModel(String modelId) =>
//      ['LWB010', 'LWB014'].contains(modelId);
//
//  static bool isDownLightModel(String modelId) =>
//      ['LCT011', 'LTW011', 'LCT002'].contains(modelId);
//
//  static bool isEntityModel(String modelId) =>
//      ['HEL001', 'HEL002'].contains(modelId);
//
//  static bool isGoModel(String modelId) => 'LLC020' == modelId;
//
//  static bool isImpulseModel(String modelId) =>
//      ['HIL001', 'HIL002'].contains(modelId);
//
//  static bool isIrisModel(String modelId) =>
//      ['LLC010', 'LLC006'].contains(modelId);
//
//  static bool isLightStripModel(String modelId) =>
//      ['LST001', 'LST002'].contains(modelId);
//
//  static bool isPhoenixModel(String modelId) => [
//        "HML001",
//        "HML002",
//        "HML003",
//        "HML004",
//        "HML005",
//        "HML006"
//      ].contains(modelId);
//
//  static bool isSpotModel(String modelId) =>
//      ['LCT003', 'LTW013', 'LTW014'].contains(modelId);
//
//  static bool isStoryLightModel(String modelId) => 'LLC013' == modelId;
//
//  static bool isWhiteModel(String modelId) =>
//      ['LDF002', 'LDF001', 'LDD002', 'LDD001', 'MWM001'].contains(modelId);
//}
