class Company {
  Company? company;

  Company({this.company});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        company: json['company'] == null
            ? null
            : Company.fromJson(json['company'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'company': company?.toJson(),
      };

  Company copyWith({
    Company? company,
  }) {
    return Company(
      company: company ?? this.company,
    );
  }
}
