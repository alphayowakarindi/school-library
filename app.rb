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

  # create a person
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selected_number = gets.chomp.to_i
    case selected_number
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Kindly select either 1 or 2 only'
    end
  end
end
