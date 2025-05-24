class Book
  attr_accessor :title, :author, :year

  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
  end

  def summary
    "‘#{title}’ by #{author}, published in #{year}."
  end
end

book1 = Book.new("Ikigai: The Japanese Secret to a Long and Happy Life", "Héctor García and Francesc Miralles", 2016)
puts book1.summary
