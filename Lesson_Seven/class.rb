class Book
  def initialize (title, author)
    @ratings = []
    @title = title
    @author = author
  end

  def title
    @title
  end

  def add_rating(name, rating)
    @ratings << Rating.new(name, rating)
  end
end

class Rating
  def initialize(name, rating)
    @name = name
    @rating = rating
  end
end

  irb(main):039:0> wuthering = Book.new("Wuthering Heights", "Emily Bronte")
  => #<Book:0x007fbeb58b2970 @ratings=[], @title="Wuthering Heights", @author="Emily Bronte">
  irb(main):040:0> wuthering.add_rating("Jack", 8)
  => [#<Rating:0x007fbeb58a11c0 @name="Jack", @rating=8>]
  irb(main):041:0> wuthering
  => #<Book:0x007fbeb58b2970 @ratings=[#<Rating:0x007fbeb58a11c0 @name="Jack", @rating=8>], @title="Wuthering Heights", @author="Emily Bronte">
  irb(main):042:0> wuthering.add_rating("Irene", 10)
  => [#<Rating:0x007fbeb58a11c0 @name="Jack", @rating=8>, #<Rating:0x007fbeb588acb8 @name="Irene", @rating=10>]
  irb(main):043:0> wuthering
  => #<Book:0x007fbeb58b2970 @ratings=[#<Rating:0x007fbeb58a11c0 @name="Jack", @rating=8>, #<Rating:0x007fbeb588acb8 @name="Irene", @rating=10>], @title="Wuthering Heights", @author="Emily Bronte">
  irb(main):044:0>
