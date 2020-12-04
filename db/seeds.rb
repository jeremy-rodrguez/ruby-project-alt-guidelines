Rating.destroy_all
Klass.destroy_all
Student.destroy_all

50.times do
    Student.create(name:Faker::Name.name, age:rand(14...18), gender:Faker::Gender.type)
end

50.times do
    Klass.create(name:Faker::Games::DnD.klass, start_time:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), building:Faker::Games::Fallout.faction)
end

50.times do
    Rating.create(student_id:Student.all.sample.id, klass_id:Klass.all.sample.id)
end

puts "done"

# Faker::Number.number(digits: 10). Place this gem back in Rating and apply it to student_id if OG idea if trouble