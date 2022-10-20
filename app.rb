class App
  attr_accessor :books, :people

  def initialize
    @books = []
    @people = []
  end

  # list all books
  def list_all_books
    if @books.empty?
      puts 'Sorry, the books list is currently empty'
    else
      @books.each do |book|
        puts "Tilte: \"#{book.title}\", Author: #{book.author}"
      end
    end
  end

  # list all people
  def list_all_people
    if @people.empty?
      puts 'Sorry, the people list is currently empty'
    else
      @people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end
end
