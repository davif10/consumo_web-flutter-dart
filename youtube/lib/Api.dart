import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:youtube/model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyCr1wu-2qV6n9scn2tcrpxJAMJPeFcAgKk";
const ID_CANAL = "UCwXdFgeE9KYzlDdR7TG9cMw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api{
  pesquisar(String pesquisa) async{
    http.Response response = await http.get(
      Uri.parse(
      URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa"
      )
    );

    if(response.statusCode == 200){
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<Video> videos = dadosJson["items"].map<Video>(
          (map){
            return Video.fromJson(map);
            //return Video.converterJson(map);
          }
      ).toList();
        for(var video in videos){
          print("Videos: ${video.titulo}");
        }
      //print("Resultado: "+ dadosJson["items"][0]["snippet"]["title"]);
    }else{

    }
  }
}
