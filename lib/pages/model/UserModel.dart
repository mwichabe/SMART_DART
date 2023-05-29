class UserModelOne{
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? profilePictureUrl;

  UserModelOne({this.uid,this.email,this.firstName,this.secondName,this.profilePictureUrl});
  // data from server
  factory UserModelOne.fromMap(map)
  {
    return UserModelOne(
        uid:  map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        profilePictureUrl: map['profilePictureUrl']

    );
  }
// sending data to server
  Map<String,dynamic> toMap()
  {
    return
      {
        'uid': uid,
        'email':email,
        'firstName': firstName,
        'secondName': secondName,
        'profilePictureUrl': profilePictureUrl,
      };
  }




}
