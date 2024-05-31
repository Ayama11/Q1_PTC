class Availability {
  bool? online;
  bool? inStore;

  Availability({this.online, this.inStore});

  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        online: json['online'] as bool?,
        inStore: json['inStore'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'online': online,
        'inStore': inStore,
      };

  Availability copyWith({
    bool? online,
    bool? inStore,
  }) {
    return Availability(
      online: online ?? this.online,
      inStore: inStore ?? this.inStore,
    );
  }
}
