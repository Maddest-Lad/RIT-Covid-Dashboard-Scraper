import 'package:web_scraper/web_scraper.dart';

Future<Data> scrapeData() async {
  final webScraper = WebScraper('https://www.rit.edu');
  if (await webScraper.loadWebPage('/ready/dashboard')) {
    List<int> dataList = List();

    // ignore: omit_local_variable_types
    List<String> contentID = [
      "12214",
      "12202",
      "12205",
      "12190",
      "12193",
      "12226",
      "12229"
    ];

    List<String> categories = [
      "Bed Availability",
      "New Student Cases",
      "New Employee Cases",
      "On Campus Quarantine",
      "Off Campus Quarantine",
      "On Campus Isolation",
      "Off Campus Isolation"
    ];

    for (var e = 0; e < contentID.length; e++) {
      List<Map<String, dynamic>> htmlList =
          webScraper.getElement(".statistic-${contentID[e]} p.card-header", []);

      int parsedData = (contentID[e] == "12214")
          ? int.parse(htmlList[0]['title'].trim().split('%')[0])
          : int.parse(htmlList[0]['title'].trim());

      dataList.add(parsedData);
    }

    return new Data(dataList[0], dataList[1], dataList[2], dataList[3],
        dataList[4], dataList[5], dataList[6]);
  }
}

Future<void> updateData() async {
  Data data = await scrapeData();
}
