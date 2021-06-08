import 'package:music/rec.dart';
import 'package:music/views/madeforyou.dart';

List<classrec> getRecomended() {
  List<classrec> recs = [];
  classrec obj = new classrec(imgurl: '', songauthor: '', songname: '');

  //1
  obj.imgurl = "assets/sobaby.jfif";
  obj.songauthor = "Anirudh Ravichandran";
  obj.songname = "So Baby  -  From Doctor";
  recs.add(obj);
  obj = new classrec(imgurl: '', songauthor: '', songname: '');

  //2
  obj.imgurl = "assets/satho.jfif";
  obj.songauthor = "Arjith Singh";
  obj.songname = "Agar tum Sath Ho";
  recs.add(obj);
  obj = new classrec(imgurl: '', songauthor: '', songname: '');

  //3
  obj.imgurl = "assets/stero.jfif";
  obj.songauthor = "Gym class Heros";
  obj.songname = "My Heart is Stero";
  recs.add(obj);
  obj = new classrec(imgurl: '', songauthor: '', songname: '');

  //4
  obj.imgurl = "assets/sulthan.jfif";
  obj.songauthor = "Vivek-Mervin";
  obj.songname = "Jai Sulthan - from Sulthan";
  recs.add(obj);
  obj = new classrec(imgurl: '', songauthor: '', songname: '');

  //5
  obj.imgurl = "assets/zaalima.jfif";
  obj.songauthor = "Arjith Singh";
  obj.songname = "Zaalima - from raees";
  recs.add(obj);
  obj = new classrec(imgurl: '', songauthor: '', songname: '');

  //1
  obj.imgurl = "assets/kathadi1.jpg";
  obj.songauthor = "Hari Mahadevan";
  obj.songname = "So Baby  -  From Doctor";
  recs.add(obj);
  obj = new classrec(imgurl: '', songauthor: '', songname: '');

  return recs;
}

List<made> getMade() {
  // ignore: deprecated_member_use
  List<made> mads = [];
  made objs = new made(imgurl: '', songauthor: '', songname: '');

  //1
  objs.imgurl = "assets/weekly.jfif";
  objs.songauthor = "Weekly Discover";
  objs.songname = "Songs Based on ur playList";
  mads.add(objs);
  objs = new made(imgurl: '', songauthor: '', songname: '');

  //2
  objs.imgurl = "assets/mix.jfif";
  objs.songauthor = "Your daily Mix 3";
  objs.songname = "New Songs";
  mads.add(objs);
  objs = new made(imgurl: '', songauthor: '', songname: '');

  //3
  objs.imgurl = "assets/onrepeat.jfif";
  objs.songauthor = "On Repeat";
  objs.songname = "Good Music";
  mads.add(objs);
  objs = new made(imgurl: '', songauthor: '', songname: '');

  //4
  objs.imgurl = "assets/top.jfif";
  objs.songauthor = "On Repeat";
  objs.songname = "Infinite Music";
  mads.add(objs);
  objs = new made(imgurl: '', songauthor: '', songname: '');

  //5
  objs.imgurl = "assets/mix.jfif";
  objs.songauthor = "Daily Mix3";
  objs.songname = "Good Mood";
  mads.add(objs);
  objs = new made(imgurl: '', songauthor: '', songname: '');

  //1
  objs.imgurl = "assets/top.jfif";
  objs.songauthor = "New Hits";
  objs.songname = "Your Top 20 Musics";
  mads.add(objs);
  objs = new made(imgurl: '', songauthor: '', songname: '');

  return mads;
}
