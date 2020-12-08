class CommandLineInterface

    def greet
        puts "Welcome to SKOOL, the single source of truth for all klass reviews!"
        puts "Let's get started. Please select from the following:"
        puts "1. Add your name to our student directoy to view and create SKOOL ratings"
        puts "2. View our klass directory in conjunction with their respective ratings"
        puts "3. Update an existing klass name"
        puts "4. Remove a klass"
        puts "5. Exit"
        user_input = gets.chomp
        self.run(user_input)
    end

    def run(user_input)
        case(user_input)
        when "1"
            puts "Enter your name to add to the SKOOL directory:"
            self.create_student
            puts "Thank you for your interest in SKOOL. Your name has been added to the SKOOL directory."
        when "2"
            puts "Welcome, here's our SKOOL catalog! This includes the klass name, building, and rating (1 - 10) amongst SKOOL users."
            self.read
        when "3"
            self.update_klass_name
            puts "Success! The klass has been updated."
        when "4"
            puts "Which klass would you like to remove?"
            klass_input = gets.chomp
            self.delete(klass_input)
            puts "#{klass_input} has been removed."
        else
            puts "Press * to confirm."
            ex = gets.chomp
            self.exit
        end
    end

    def create_student
        stu = gets.chomp
        s1 = Student.new(name: "#{stu}")
        s1.save
        self.return_to_menu
    end

    def read
        # puts Klass.all.pluck(:name, :building, :rating)
        Klass.all.each do |klass|
            puts "name: #{klass.name}"
            puts "building: #{klass.building}"
            puts "rating: #{klass.rating}"
            puts ""
        end
        self.return_to_menu
    end

    def update_klass_name
        puts "Please enter the name of the klass that you are looking for:"
        upd_input = gets.chomp
        stud = Klass.find_by(name: "#{upd_input}")
        puts "Please enter the new name the klass that you wish to update:"
        upd_input_new_name = gets.chomp
        stud.update(name: "#{upd_input_new_name}")
        self.return_to_menu
    end

    def delete(klass_input)
        k1 = Klass.find_by(name: "#{klass_input}")
        k1.destroy
        self.return_to_menu
    end

    def return_to_menu
        puts "To return to the main menu, please press enter."
        gets.chomp
        self.greet
    end

    def exit
        puts "Thank you for visiting SKOOL. Have a great day!"
    end
end