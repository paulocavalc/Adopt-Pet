
class Users {
    final int? userId;
    final String userFullName;
    final String userEmail;
    final String userPassword;

    Users({
        this.userId,
        required this.userFullName,
        required this.userEmail,
        required this.userPassword,
    });

    factory Users.fromMap(Map<String, dynamic> json) => Users(
        userId: json["userId"],
        userFullName: json["userFullName"],
        userEmail: json["userEmail"],
        userPassword: json["userPassword"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "userFullName": userFullName,
        "userEmail": userEmail,
        "userPassword": userPassword,
    };
}
