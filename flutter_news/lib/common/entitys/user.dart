class UserLoginRequestEntity {
  ///邮箱
  String email;

  ///密码
  String password;

  UserLoginRequestEntity({
    required this.email,
    required this.password,
  });

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

enum Channel { FOX, GAME, NBA, NEWS, SPORT }

class UserLoginResponseEntity {
  ///令牌
  String accessToken;

  ///用户频道
  List<Channel> channels;

  ///用户显示名字
  String displayName;

  UserLoginResponseEntity({
    required this.accessToken,
    required this.channels,
    this.displayName = '',
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        channels: List<Channel>.from(
            json["channels"].map((x) => channelValues.map[x]!)),
        displayName: json["display_name"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "channels":
            List<dynamic>.from(channels.map((x) => channelValues.reverse[x])),
        "display_name": displayName,
      };
}

final channelValues = EnumValues({
  "FOX": Channel.FOX,
  "GAME": Channel.GAME,
  "NBA": Channel.NBA,
  "NEWS": Channel.NEWS,
  "SPORT": Channel.SPORT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
