import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

//implementacion de la clase abstracta,
class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoritVidepsByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    //delay de 1s
    await Future.delayed(const Duration(seconds: 1));
    //crea nueva lista
    final List<VideoPost> newVideos = videoPosts
        .map(
            //convierte fuente local json a model
            (videos) => LocalVideoModel.fromJson(videos)
                //convierte model a entidad y la coleccion resultante a una lista
                .toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
