import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_reposiitory.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosPostDatasoure;

  VideoPostRepositoryImpl({required this.videosPostDatasoure});

  @override
  Future<List<VideoPost>> getFavoritVidepsByUser(String userId) {
    // TODO: implement getFavoritVidepsByUser
    throw UnimplementedError();
  }
//se encarga de llamar al datasource
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosPostDatasoure.getTrendingVideosByPage( page );
  }
}
