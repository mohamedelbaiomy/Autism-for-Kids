class Story {
  String image;
  String name;
  String color;
  String partImage;
  List<StoryPart> parts;
  Story({
    required this.name,
    required this.image,
    required this.parts,
    required this.color,
    required this.partImage,
  });
}

class StoryPart {
  String partNumber;
  String partVideo;
  StoryPart({
    required this.partNumber,
    required this.partVideo,
  });
}

List<Story> getStories() {
  List<Story> list = [];

  list.add(
    Story(
      name: 'Duck',
      image: 'assets/story_options/Duck.jpeg',
      partImage:
          'assets/story_options/the_ugly_duckling/The Ugly Duckling.jpeg',
      color: '#34af98ff',
      parts: [
        StoryPart(
          partNumber: 'Part 1',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_ugly_duckling/Part%201.mp4',
        ),
        StoryPart(
          partNumber: 'Part 2',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_ugly_duckling/Part%202.mp4',
        ),
        StoryPart(
          partNumber: 'Part 3',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_ugly_duckling/Part%203.mp4',
        ),
        StoryPart(
          partNumber: 'Part 4',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_ugly_duckling/Part%204.mp4',
        ),
        StoryPart(
          partNumber: 'Part 5',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_ugly_duckling/Part%205.mp4',
        ),
      ],
    ),
  );

  list.add(
    Story(
      partImage: 'assets/story_options/the_magic_pot/The Magic Pot.jpeg',
      name: 'The Magic Pot',
      image: 'assets/story_options/Magicpot.jpeg',
      color: '#7ed7c1ff',
      parts: [
        StoryPart(
          partNumber: 'Part 1',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_magic_pot/Part%201.mp4',
        ),
        StoryPart(
          partNumber: 'Part 2',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_magic_pot/Part%202.mp4',
        ),
        StoryPart(
          partNumber: 'Part 3',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_magic_pot/Part%203.mp4',
        ),
        StoryPart(
          partNumber: 'Part 4',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_magic_pot/Part%204.mp4',
        ),
      ],
    ),
  );
  list.add(
    Story(
      partImage:
          'assets/story_options/the_well_and_the_baker/The Well & The Baker.jpeg',
      name: 'The Well & the Baker',
      image: 'assets/story_options/The well and the baker.jpeg',
      color: "#028391ff",
      parts: [
        StoryPart(
          partNumber: 'The Story',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_well_and_the_baker/The%20Well%20&%20The%20Baker.mp4',
        ),
      ],
    ),
  );
  list.add(
    Story(
      name: 'The Lion & the Mouse',
      image: 'assets/story_options/The Lion & The Mouse.jpeg',
      color: '#ffd18eff',
      partImage: 'assets/story_options/The Lion & The Mouse.jpeg',
      parts: [
        StoryPart(
          partNumber: 'Part 1',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_lion_and_the_mouse/Part%201.mp4',
        ),
        StoryPart(
          partNumber: 'Part 2',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_lion_and_the_mouse/Part%202.mp4',
        ),
        StoryPart(
          partNumber: 'Part 3',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_lion_and_the_mouse/Part%203.mp4',
        ),
        StoryPart(
          partNumber: 'Part 4',
          partVideo:
              'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/story_options/the_lion_and_the_mouse/Part%204.mp4',
        ),
      ],
    ),
  );
  return list;
}
