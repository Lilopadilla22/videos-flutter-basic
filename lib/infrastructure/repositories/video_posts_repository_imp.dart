import 'package:videos_flutter_basic/domain/datasource/video_posts_datasource.dart';
import 'package:videos_flutter_basic/domain/entities/video_post.dart';
import 'package:videos_flutter_basic/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImp implements VideoPostsRepository {

  final VideoPostsDatasource videoPostDataSource;

  VideoPostsRepositoryImp({
    required this.videoPostDataSource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {

    return videoPostDataSource.getTrendingVideosByPage(page);
  }

}

//Mandame un origen de datos y yo los envio. 