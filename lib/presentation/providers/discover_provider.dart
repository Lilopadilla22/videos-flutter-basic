import 'package:flutter/material.dart';
import 'package:videos_flutter_basic/domain/entities/video_post.dart';
import 'package:videos_flutter_basic/domain/repositories/video_posts_repository.dart';
import 'package:videos_flutter_basic/domain/shared/data/local_video_posts.dart';
import 'package:videos_flutter_basic/infrastructure/models/local_video_model.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videoRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoRepository});

  Future<void> loadNextPage() async {
    await Future.delayed(Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videoRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);

    initialLoading = false;

    notifyListeners();
  }
}
