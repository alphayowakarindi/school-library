class App
  attr_accessor :books

  def initialize
    @books = []
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
end
