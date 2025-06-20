import 'package:videos_flutter_basic/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {

  Future<List<VideoPost>> getTrendingVideosByPage ( int page);

  Future<List<VideoPost>> getFavoriteVideosByPage ( String userID);
}