class User{
  String username;
  String email;
  String? profilPicUrl;

  User({required this.username, required this.email, this.profilPicUrl});

  String getUsername(){
    return username;
  }

  String getEmail(){
    return email;
  }

  String? getProfilPicUrl(){
    return profilPicUrl;
  }

  void setUsername(String username){
    this.username = username;
  }

  void setEmail(String email){
    this.email = email;
  }

  void setProfilPicUrl(profilPicUrl){
    this.profilPicUrl = profilPicUrl;
  }

}