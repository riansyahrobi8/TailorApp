import 'dart:io';

import 'package:http/http.dart';
import 'package:tailorapp/models/channel_info_model.dart';
import 'package:tailorapp/models/videos_list_model.dart';
import 'package:tailorapp/utils/keys.dart';

class Services {
  static const String CHANNEL_ID = 'UCyFezEWLR8R7uTzmGUTzzlA';
  static const _baseUrl = 'www.googleapis.com';

  static Future<ChannelInfo> fetchChannel() async {
    Map<String, String> params = {
      'part': 'snippet,contentDetails,statistics',
      'id': CHANNEL_ID,
      'key': Constants.API_KEY,
    };

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/channels',
      params,
    );

    Response response = await get(uri, headers: headers);
    print(response.body);

    ChannelInfo channelInfo = channelInfoFromJson(response.body);
    return channelInfo;
  }

  static Future<VideosList> fetchVideosList(
      {String playlistId, String pageToken}) async {
    Map<String, String> params = {
      'part': 'snippet',
      'playlistId': playlistId,
      'maxResults': "8",
      'pageToken': pageToken,
      'key': Constants.API_KEY,
    };

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/playlistItems',
      params,
    );

    Response response = await get(uri, headers: headers);
    print(response.body);

    VideosList videosList = videosListFromJson(response.body);
    return videosList;
  }
}