import 'package:videos_flutter_basic/domain/datasource/video_posts_datasource.dart';
import 'package:videos_flutter_basic/domain/entities/video_post.dart';
import 'package:videos_flutter_basic/domain/shared/data/local_video_posts.dart';
import 'package:videos_flutter_basic/infrastructure/models/local_video_model.dart';

class LocalVideoDatasourceImpl extends VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}

//Definimos la forma en como vamos a procesar los videos locales