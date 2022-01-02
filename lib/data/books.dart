class BookModel {
  String imgAssetPath;
  String title;
  String author;
  String description;
  String categorie;
  int rating;

  BookModel(this.imgAssetPath, this.title, this.author, this.description,
      this.categorie, this.rating);
}

List<BookModel> getBooks() {
  BookModel book1 = BookModel(
      "assets/kingdom_of.png",
      "Kingdom of the Cursed",
      "Kerri Maniscalco",
      "After selling her soul to become Queen of the Wicked, Emilia travels to the Seven Circles with the enigmatic Prince of Wrath, where she's introduced to a seductive world of vice. She vows to do whatever it takes to avenge her beloved sister, Vittoria . . . even if that means accepting the hand of the Prince of Pride, the king of demons.",
      "Fantasy - Dark Fantasy",
      4);
  BookModel book2 = BookModel(
      "assets/the_song.png",
      "The Song of Achilles",
      "Madeline Miller",
      "At once a scholar's homage to The Iliad and startlingly original work of art....A book I could not put down. --Ann Patchett, author of The Dutch House A thrilling, profoundly moving, and utterly unique retelling of the legend of Achilles and the Trojan War from the bestselling author of Circe",
      "Classics, Literary",
      5);
  BookModel book3 = BookModel(
      "assets/mediocre.png",
      "The Dangerous Legacy of White Male America",
      "Ijeoma Oluo",
      "What happens to a country that tells generation after generation of white men that they deserve power? What happens when success is defined by status over women and people of color, instead of by actual accomplishments?",
      "Corruption",
      4);
  BookModel book4 = BookModel(
      "assets/so_you_want.png",
      "So You Want to Talk about Race",
      "Ijeoma Oluo",
      "Protests against racial injustice and white supremacy have galvanized millions around the world. The stakes for transformative conversations about race could not be higher. Still, the task ahead seems daunting, and it's hard to know where to start. How do you tell your boss her jokes are racist? Why did your sister-in-law hang up on you when you had questions about police reform? How do you explain white privilege to your white, privileged friend?",
      "Discrimination",
      5);
  BookModel book5 = BookModel(
      "assets/parable_of.png",
      "Parable of the Sower",
      "Octavia E. Butler",
      "This acclaimed post-apocalyptic novel of hope and terror from an award-winning author pairs well with 1984 or The Handmaid's Tale and includes a foreword by N. K. Jemisin (John Green, New York Times).",
      "Historical Fiction",
      5);

  BookModel book6 = BookModel(
      "assets/the_body.png",
      "The Body Keeps the Score",
      "Bessel Van Der Kolk",
      "Essential reading for anyone interested in understanding and treating traumatic stress and the scope of its impact on society. --Alexander McFarlane, Director of the Centre for Traumatic Stress Studies.",
      "Neuropsychology",
      5);
  BookModel book7 = BookModel(
      "assets/call_us_what.png",
      "Call Us What We Carry: Poems",
      "Amanda Gorman",
      "Formerly titled The Hill We Climb and Other Poems, the luminous poetry collection by #1 New York Times bestselling author and presidential inaugural poet Amanda Gorman captures a shipwrecked moment in time and transforms it into a lyric of hope and healing.",
      "Women Authors",
      5);
  BookModel book8 = BookModel(
      "assets/we_do_this.png",
      "We Do This 'Til We Free Us",
      "Mariame Kaba",
      "Organizing is both science and art. It is thinking through a vision, a strategy, and then figuring out who your targets are, always being concerned about power, always being concerned about how you're going to actually build power in order to be able to push your issues, in order to be able to get the target to actually move in the way that you want to.",
      "Feminism",
      5);
  BookModel book9 = BookModel(
      "assets/matt_haig.png",
      "The Midnight Library",
      "Matt Haig",
      "The dazzling reader-favorite about the choices that go into a life well lived, from the acclaimed author of How To Stop Time and The Comfort Book.",
      "Literary, Science Fiction",
      5);
  List<BookModel> books = <BookModel>[
    book1,
    book2,
    book3,
    book4,
    book5,
    book6,
    book7,
    book8,
    book9
  ];
  return books;
}
