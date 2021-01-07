class Post {
  final String profileURL,
      profileName,
      description,
      profilePhoto,
      address,
      privacy,
      media;
  final DateTime postTime;
  final int likes, comments, shares;

  Post(
      {this.profileURL,
      this.profileName,
      this.description,
      this.profilePhoto,
      this.address,
      this.privacy,
      this.media,
      this.postTime,
      this.likes,
      this.comments,
      this.shares,
      String image,
      String image2});
}
