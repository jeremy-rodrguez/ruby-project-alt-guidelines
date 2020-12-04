class CommandLineInterface
    def greet
        puts "Welcome to SKOOL, the single source of truth for all klass reviews!"
        puts "Let's get started. What is your name?"
        user_inp = gets.chomp
        puts "Hello #{user_inp}! Please select from the following:"
        puts "1. Create a new klass rating"
        puts "2. View all of the students inside of a klass"
        puts "3. Update an existing klass name"
        puts "4. Remove a klass"
        user_input = gets.chomp
        self.run(user_input)
    end

    def run(user_input)
        case(user_input)
        when "1"
            puts ""
            # puts self.create
        when "2"
            puts "What klass would you like to take a look at?"
            klass = gets.chomp
            puts "Here's the list of students in #{klass}:"
            # puts self.read
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
            self.exit
        end
    end

    # def create
    # end

    # def read
    # end

    # def update
    # end

    # def delete
    # end

    def exit
        puts "Thank you for visiting. Have a great day!"
    end
end