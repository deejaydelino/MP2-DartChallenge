// ignore: unused_import
import 'dart:math';

// Song class represents a single song with title, artist, and duration of the song
class Song {
  String title;
  String artist;
  double duration; // duration in minutes

  // Constructorr
  Song(this.title, this.artist, this.duration);

  // Method to get a formatted string of the song details
  String getDetails() {
    return 'Song: $title by $artist, Duration: ${duration.toStringAsFixed(2)} minutes';
  }
}

// Playlist class represents the playlist of songs
class Playlist {
  String name;
  List<Song> songs = [];

  // Constructor
  Playlist(this.name);

  // Method to add the song to the playlist
  void addSong(Song song) {
    songs.add(song);
  }

  // Method to get the total of duration in the song playlist
  double getTotalDuration() {
    return songs.fold(0, (sum, song) => sum + song.duration);
  }

  // Method to print the details of all songs in the playlist
  void printDetails() {
    print('Playlist: $name');
    for (var song in songs) {
      print(song.getDetails());
    }
    print('Total Duration: ${getTotalDuration().toStringAsFixed(2)} minutes');
  }
}

// MusicFestival class represents the music festival with multiple playlists (stages)
class MusicFestival {
  String name;
  List<Playlist> stages = [];

  // Constructor
  MusicFestival(this.name);

  // Method to add a playlist (stage) to the festival
  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  // Method to print details of all stages and their songs
  void printFestivalDetails() {
    print('Music Festival: $name');
    for (var stage in stages) {
      stage.printDetails();
      print(''); // Add an empty line between stages
    }
  }
}

void main() {
  print('Welcome to the Music Festival Playlist Manager!');

  // Songs Created
  var song1 = Song('Consume', 'Chase Atlantic', 4.20);
  var song2 = Song('Die For You', 'The Weeknd', 3.56);
  var song3 = Song('Oui', 'Jeremih', 4.12);
  var song4 = Song('Don\'t', 'Bryson Tiller', 3.20);
  var song5 = Song('Your Song', 'Parokya ni Edgar', 5.00);
  var song6 = Song('Sining', 'Dionela', 3.45);

  // Playlists Created (stages)
  var stage1 = Playlist('Stage 1: Pop Hits');
  var stage2 = Playlist('Stage 2: R&B Vibes');
  var stage3 = Playlist('Stage 3: OPM Classics');

  // Add all songs to playlists
  stage1.addSong(song2); // Die For You by The Weeknd
  stage1.addSong(song3); // Oui by Jeremih
  stage1.addSong(song4); // Don't by Bryson Tiller

  stage2.addSong(song1); // Consume by Chase Atlantic
  stage2.addSong(song2); // Die For You by The Weeknd

  stage3.addSong(song5); // Your Song by Parokya ni Edgar
  stage3.addSong(song6); // Sining by Dionela

  // music festival
  var musicFestival = MusicFestival('Awesome Music Festival');

  // Add playlists (stages) to the music festival
  musicFestival.addStage(stage1);
  musicFestival.addStage(stage2);
  musicFestival.addStage(stage3);

  // Print festival details
  musicFestival.printFestivalDetails();
}
