/// 新闻分页 request
class NewsPageListRequestEntity {
  String? categoryCode;
  String? channelCode;
  String? tag;
  String? keyword;

  NewsPageListRequestEntity({
    this.categoryCode,
    this.channelCode,
    this.tag,
    this.keyword,
  });

  Map<String, dynamic> toJson() => {
        "categoryCode": categoryCode,
        "channelCode": channelCode,
        "tag": tag,
        "keyword": keyword,
      };
}

/// 新闻分页 response
class NewsPageListResponseEntity {
  int? counts;
  int? pagesize;
  int? pages;
  int? page;
  List<Items>? items;

  NewsPageListResponseEntity({
    this.counts,
    this.pagesize,
    this.pages,
    this.page,
    this.items,
  });

  NewsPageListResponseEntity.fromJson(Map<String, dynamic> json) {
    counts = json['counts'];
    pagesize = json['pagesize'];
    pages = json['pages'];
    page = json['page'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['counts'] = this.counts;
    data['pagesize'] = this.pagesize;
    data['pages'] = this.pages;
    data['page'] = this.page;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? id;
  String? category;
  String? thumbnail;
  String? addtime;
  String? title;
  String? author;
  String? url;

  Items(
      {this.id,
      this.category,
      this.thumbnail,
      this.addtime,
      this.title,
      this.author,
      this.url});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    addtime = json['addtime'];
    title = json['title'];
    author = json['author'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['addtime'] = this.addtime;
    data['title'] = this.title;
    data['author'] = this.author;
    data['url'] = this.url;
    return data;
  }
}

/// 新闻推荐 request
class NewsRecommendRequestEntity {
  String? categoryCode;
  String? channelCode;
  String? tag;
  String? keyword;

  NewsRecommendRequestEntity({
    this.categoryCode,
    this.channelCode,
    this.tag,
    this.keyword,
  });

  Map<String, dynamic> toJson() => {
        "categoryCode": categoryCode,
        "channelCode": channelCode,
        "tag": tag,
        "keyword": keyword,
      };
}
