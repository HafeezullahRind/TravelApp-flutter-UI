class location {
  String imageUrl;
  String title;
  String description;
  location(
    this.imageUrl,
    this.title,
    this.description,
  );
}

List<location> locations = [
  location(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOJSaDGwZ3tj9EbT62-K1lkAsk8cc7vNDZVQ&usqp=CAU",
      'Islamabad Pakistan',
      'Islamabad is the capital city of Pakistan. It is the country\'s ninth-most populous city with a population of over 1.2 million people and is federally ...'),
  location(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoO-dqTJSEgYZF4IfL2yECk_Ev0o7sJ5ONzQ&usqp=CAU",
      'Lahore Pakistan',
      'Lahore is one of Pakistan\'s major economic hubs'),
  location(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyxPtqStjFfVjLtUNtwywmH3xHjb0Zp6j91A&usqp=CAU",
      'Sindh Karachi',
      'Known as the City of Lights for obvious reasons')
];
