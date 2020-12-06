class CommandLineInterface

    def greet
        puts "Welcome to SKOOL, the single source of truth for all klass reviews!"
        puts "Let's get started. What is your name?"
        user_inp = gets.chomp
        puts "Hello #{user_inp}! Please select from the following:"
        puts "1. Create a new student"
        puts "2. View our most popular klasses"
        puts "3. Update an existing klass name"
        puts "4. Remove a klass"
        puts "5. Exit."
        user_input = gets.chomp
        self.run(user_input)
    end

    def run(user_input)
        case(user_input)
        when "1"
            puts "Enter the student name that you would like to create."
            name = gets.chomp
            puts "Thank you! #{name} has been added to the directory."
            # puts self.create
        when "2"
            puts "What klass would you like to take a look at?"
            klass = gets.chomp
            puts "Here's the list of students in #{klass}:"
            # self.read
        when "3"
            puts "Please enter the new name for the klass:"
            klass_name = gets.chomp
            puts "Success! The klass has been updated to #{klass_name}."
            # puts self.update
        when "4"
            puts "Which klass would you like to remove?"
            klass_input = gets.chomp
            puts "#{klass_input} has been deleted."
            # puts self.delete
        else
            puts "Press * to confirm."
            ex = gets.chomp
            self.exit
        end
    end

    # def create
    # stu = Student.new
    # stu.name = "STUDENT NAME"
    # stu.save (this saves the student in the directory.)
    # end

    # def read
    #   self.most_popular_klass
    #   self.where("rating = 7"), refers to Klass and returns 7 klasses.
    # end

    # def update
    #   Movie.create(title: "Awesome Flick")
    #   movie = Movie.find_by(title: "Awesome Flick")
    #   movie.update(title: "Even Awesomer Flick")
    #   movie.save
    # end

    # def delete
    #   Klass.create(name: "SOME NAME")
    #   delete_klass = Klass.find_by(name: "SOME NAME")
    #   klass.destroy
    #   this works with an instance that I created, Goblin 101.
    # end

    def exit
        puts "Thank you for visiting SKOOL. Have a great day!"
    end
end