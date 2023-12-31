class Game {
  String title;
  GameImage coverImage;
  late List<GameImage> images;
  String description;
  String studio;

  Game(
    this.title,
    this.coverImage,
    this.description,
    this.studio,
  );
}

class GameImage {
  String url;
  String title;

  GameImage(
    this.url,
    this.title,
  );
}

List<Game> games = [
  Game(
    "Horizon Zero Dawn",
    GameImage(
        "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Metro Exodus",
    GameImage(
        "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Tom Clancy's The Division 2",
    GameImage(
        "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
        "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
        ""),
    "",
    "Rockstar Games",
  ),
  Game(
    "The Last of Us Part II",
    GameImage("https://mvpo.us/img/P6253.jpg", ""),
    "",
    "Naughty Dog",
  ),
  Game(
    "Sekiro: Shadows Die Twice",
    GameImage(
        "https://onlysp.escapistmagazine.com/wp-content/uploads/2019/03/Sekiro-Shadows-Die-Twice-logo-art.jpg",
        ""),
    "",
    "From Software",
  ),
  Game(
    "Just Cause 4",
    GameImage(
        "https://s3.gaming-cdn.com/images/products/2666/orig/just-cause-4-cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
];

//FEATURES GAMES SECTION//////////////////////

List<Game> featuredGames = [
  Game(
    "STAR WARS",
    GameImage(
        "https://lumiere-a.akamaihd.net/v1/images/star-wars-outlaws-key-art-square_b893fc9e.jpeg?region=0%2C0%2C1080%2C1080",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
        "https://cdn.mos.cms.futurecdn.net/5jzXZyhFTPRWsgL8dCUZFA.jpg", ""),
    "",
    "Infinity Ward",
  ),
  Game(
    "CLANK",
    GameImage(
        "https://insomniac.games/wp-content/uploads/2020/10/RCRA_RiftApart_Keyart_1080x1080.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game(
    "FORNITE",
    GameImage(
        "https://lh3.googleusercontent.com/Wu9Wz-9aR2_6ahwKfeJRaxX1iJIHQcpYTD24kFsewYD3qdtthCJUk8MQc7ZWZycwEwc",
        ""),
    "",
    "NetherRealm Studios",
  )
];
