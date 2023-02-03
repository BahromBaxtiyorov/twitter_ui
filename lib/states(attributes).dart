
import 'models/searchModel.dart';
import 'models/searchModel.dart';
import 'models/searchModel.dart';
import 'models/searchModel.dart';
import 'models/searchModel.dart';
import 'models/twitModel.dart';

List<TweetModel> posts = [
  TweetModel(
      userImage: "assets/images/photo_2020-05-22_14-12-48.jpg",
      userName: "Martha Craig",
      nickName: "@craig_love",
      tweetTime: "12h",
      textContent:
      "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou",
      commentNumber: 28,
      retweetNumber: 5,
      likeNumber: 21,
      actionType: " liked",
      actionIcon: "assets/icons/heart.svg",
      actionUserNameList: ["Kieron Dotson", "Zack John"]),
  TweetModel(
      userImage: "assets/images/photo_2020-05-22_14-12-48.jpg",
      userName: "Joshua Lawrence",
      nickName: "@l_joshua",
      tweetTime: "3h",
      textContent: "Y'all ready for this next post?",
      commentNumber: 46,
      retweetNumber: 18,
      likeNumber: 363,
      actionType: " liked",
      actionIcon: "assets/icons/heart.svg",
      actionUserNameList: ["Zack John"]),
  TweetModel(
      userImage: "assets/images/photo_2020-05-22_14-12-48.jpg",
      userName: "Martin Randolph",
      isOfficialAccount: true,
      nickName: "@martin_randolph",
      tweetTime: "14h",
      textContent: "Kobe's passing is really sticking w/me in a way I didn't expect.\n\nHe was an icon, the kind of person who wouldn't die this way. My wife compared it to Princess Di's accident.\n\nBut the end can happen for anyone at any time, & I can't help but think of anything else lately.",
      commentNumber: 7,
      retweetNumber: 1,
      likeNumber: 11,
      actionType: " Retweeted",
      actionIcon: "assets/icons/retweet.svg",
      actionUserNameList: ["Kieron Dotson"]),
  TweetModel(
      userImage: "assets/images/photo_2020-05-22_14-12-48.jpg",
      userName: "Andrew Parker",
      nickName: "@andrew_parker",
      tweetTime: "10h",
      textContent: "The Blues are back this weekend 🙌",
      contentImage: "assets/images/photo_2020-05-22_14-12-48.jpg",
      commentNumber: 7,
      retweetNumber: 1,
      likeNumber: 11,
      actionType: " Retweeted",
      actionIcon: "assets/icons/retweet.svg",
      actionUserNameList: ["Kieron Dotson"]),
];
List<SearchModel> searchLists = [
 SearchModel("Sports.Trending","Mbappe","41.5K Tweets"),
  SearchModel("Trending in Movies","On Wednesdays","2.070 Tweets"),
  SearchModel("Sports.Trending","La Liga","33.5K Tweets"),
  SearchModel("Sports.Trending","Gavi","38.5K Tweets"),
  SearchModel("Sports.Trending","Tebas","21.5K Tweets"),

];
// bool isClicked = false;
// List<ContactModel> searchList = [
//
// ];