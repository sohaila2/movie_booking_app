
class MovieModel{
   final String id;
   final String name;
   final String image;
   final double qualification;
   final int year;
   final String duration;
   final String genre;
   final String description;

   const MovieModel({
     required this.id,
     required this.name,
     required this.image,
     required this.qualification,
     required this.year,
     required this.duration,
     required this.genre,
     required this.description
   });

   static List<MovieModel> listMovie = [
     MovieModel(id: '1',
         name: 'The Accursed',
         image: 'Assets/cinema/movie1.jpg',
         qualification: 5,
         year: 2021,
         duration: '2h 25m',
         genre: 'science Fiction',
         description: 'dom'
     ),
     MovieModel(
         id: '2',
         name: 'The adam project',
         image: 'Assets/cinema/movie2.jpg',
         qualification: 5,
         year: 2021,
         duration: '2h 25m',
         genre: 'Science fiction',
         description: 'Domic Toretto leads a quiet life, away from everything, with Letty and her son, little Brian. danger is always lurking. This time, this threat will force Domic Toretto to face the sins of his past to save those he loves most.'
     ),
     MovieModel(
         id: '3',
         name: 'All the old Knives',
         image: 'Assets/cinema/movie3.jpg',
         qualification: 4,
         year: 2021,
         duration: '2h 43m',
         genre: 'Action',
         description: 'In "No Time to Die", James Bond (Daniel Craig) finds himself enjoying a well-deserved vacation in Jamaica. However, his peace ends when his CIA friend, Felix Leiter (Jeffrey Wright), seeks him out for a new mission that involves rescuing an important scientist who has been kidnapped.'
     ),
     MovieModel(
         id: '4',
         name: 'The Automat',
         image: 'Assets/cinema/movie4.jpg',
         qualification: 4.8,
         year: 2021,
         duration: '1h 55m',
         genre: 'Science fiction',
         description: 'A bank worker discovers that he is actually a player in a video game.'
     ),
     MovieModel(
         id: '5',
         name: 'Dakota',
         image: 'Assets/cinema/movie5.jpg',
         qualification: 4.2,
         year: 2021,
         duration: '1h 56m',
         genre: 'Science fiction',
         description: 'In the near future, Nicolas Bannister (Hugh Jackman) has a business where his clients can relive any memory they want. His life changes when he meets Mae (Rebecca Ferguson), a woman who only comes to the office to remember where she left her keys. But this meeting soon turns into a passionate romance.'
     ),
     MovieModel(
         id: '6',
         name: 'A day to die',
         image: 'Assets/cinema/movie6.jpg',
         qualification: 4.2,
         year: 2021,
         duration: '2h 12m',
         genre: 'Science fiction',
         description: 'Shang-Chi must face the past that he thought he had left behind when he is drawn into the web of the mysterious Ten Rings organization.'
     ),
     MovieModel(
         id: '7',
         name: 'Crimes futur',
         image: 'Assets/cinema/movie7.jpg',
         qualification: 4.1,
         year: 2021,
         duration: '1h 46m',
         genre: 'Science fiction',
         description: 'A man discovers that his hallucinations are actually past life visions.'
     ),
     MovieModel(
         id: '8',
         name: "capone",
         image: 'Assets/cinema/movie8.jpg',
         qualification: 4.2,
         year: 2021,
         duration: '1h 38m',
         genre: 'Terror',
         description: 'The blind man has been hiding for years in an isolated cabin and has taken in and raised a girl who lost her parents in a house fire. Her quiet existence is shattered when a group of kidnappers show up and take the girl away.'
     ),
     MovieModel(
         id: '9',
         name: 'The call of the wild',
         image: 'Assets/cinema/movie9.webp',
         qualification: 3.9,
         year: 2021,
         duration: '2h 7m',
         genre: 'Action',
         description: 'Film set at the beginning of the 20th century. Frank (played by Dwayne Johnson) is the charismatic captain of a peculiar boat that travels through the Amazon rainforest.'
     ),
     MovieModel(
         id: '10',
         name: 'A call to  spy',
         image: 'Assets/cinema/movie10.jpg',
         qualification: 4.5,
         year: 2021,
         duration: '2h 14m',
         genre: 'Science fiction',
         description: 'Natasha Romanoff, aka Black Widow, faces the darkest parts of her story when a dangerous conspiracy with ties to her past emerges.'
     ),
     MovieModel(
         id: '11',
         name: 'Castle freak',
         image: 'Assets/cinema/movie11.jpg',
         qualification: 3.7,
         year: 2021,
         duration: '1h 43m',
         genre: 'Action',
         description: 'Fifth (and last) installment of The Purge saga. If you could commit any crime with impunity one night a year, what would you do? Crime rages in America and jails are full.'
     ),
   ];






}