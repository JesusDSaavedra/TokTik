import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostsRepositorieImpl extends VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositorieImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideoByPage(int page) {
    return videosDatasource.getTrandingVideoByPage(page);
  }
}
