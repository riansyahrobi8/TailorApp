import 'package:flutter/material.dart';
import 'package:tailorapp/models/channel_info_model.dart';
import 'package:tailorapp/models/videos_list_model.dart';
import 'package:tailorapp/screens/VideoPlayScreen.dart';
import 'package:tailorapp/services/services.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:cached_network_image/cached_network_image.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  ChannelInfo _channelInfo;
  VideosList _videosList;
  Item _item;
  bool _isLoading;
  String _playlistId;
  String _nextPageToken;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _nextPageToken = '';
    _scrollController = ScrollController();
    _videosList = VideosList();
    _videosList.videos = List();
    _fetchChannelInfo();
  }

  _fetchChannelInfo() async {
    _channelInfo = await Services.fetchChannel();
    _item = _channelInfo.items[0];
    _playlistId = _item.contentDetails.relatedPlaylists.uploads;
    print("Playlist $_playlistId");
    await _fetchVideos();
    setState(() {
      _isLoading = false;
    });
  }

  _fetchVideos() async {
    VideosList tempVideosList = await Services.fetchVideosList(
      playlistId: _playlistId,
      pageToken: _nextPageToken,
    );
    _nextPageToken = tempVideosList.nextPageToken;
    _videosList.videos.addAll(tempVideosList.videos);
    // print("Videos ${_videosList.videos}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: myColor.textColorWhite),
        title: MyCustomText(
            text: "Video",
            fontSize: 16.0,
            fontFamily: "Montserrat",
            color: myColor.textColorWhite,
            fontWeight: FontWeight.w800),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  // _buildInfoView(),
                  Expanded(
                    child: NotificationListener<ScrollEndNotification>(
                      onNotification: (ScrollNotification scrollNotification) {
                        // if (_videosList.videos.length >=
                        //     int.parse(_item.statistics.videoCount)) {
                        //   return true;
                        // }
                        if (scrollNotification.metrics.pixels ==
                            scrollNotification.metrics.maxScrollExtent) {
                          _fetchVideos();
                        }
                        return true;
                      },
                      child: ListView.builder(
                          controller: _scrollController,
                          itemCount: _videosList.videos.length,
                          itemBuilder: (BuildContext context, int index) {
                            VideoItem videoItem = _videosList.videos[index];
                            return InkWell(
                              onTap: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoPlayScreen(
                                              videoItem: videoItem,
                                            )));
                              },
                              child: Card(
                                child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl: videoItem.video.thumbnails
                                              .thumbnailsDefault.url,
                                        ),
                                        SizedBox(
                                          width: 16.0,
                                        ),
                                        Flexible(
                                          child: MyCustomText(
                                            text: videoItem.video.title,
                                            color: myColor.primaryColor,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16.0,
                                        )
                                      ],
                                    )),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  // _buildInfoView() {
  //   return _isLoading
  //       ? CircularProgressIndicator()
  //       : Container(
  //           child: Card(
  //             child: Padding(
  //               padding: const EdgeInsets.all(16.0),
  //               child: Row(
  //                 children: [
  //                   CircleAvatar(
  //                     backgroundImage: CachedNetworkImageProvider(
  //                         _item.snippet.thumbnails.medium.url),
  //                   ),
  //                   SizedBox(
  //                     width: 20.0,
  //                   ),
  //                   Expanded(
  //                     child: MyCustomText(
  //                       text: _item.snippet.title,
  //                       color: myColor.primaryColor,
  //                       fontFamily: 'Montserrat',
  //                       fontSize: 18.0,
  //                       fontWeight: FontWeight.w800,
  //                     ),
  //                   ),
  //                   MyCustomText(
  //                     text: _item.statistics.videoCount,
  //                     color: myColor.primaryColor,
  //                     fontFamily: 'Roboto',
  //                     fontSize: 14.0,
  //                     fontWeight: FontWeight.w800,
  //                   ),
  //                   SizedBox(
  //                     width: 20.0,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  // }
}
