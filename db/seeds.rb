[Downtime, Part, Machine].each(&:delete_all)

100.times do
    machine = Machine.new
    machine.name = Faker::App.name
    machine.manufacturer = Faker::Company.name
    machine.model = Faker::Hacker.abbreviation
    machine.save
    Faker::Number.between(10, 30).times do
        part = Part.new
        part.name = Faker::App.name
        part.manufacturer = Faker::Company.name
        part.model = Faker::Hacker.abbreviation
        part.machine_id = machine.id
        part.price = Faker::Commerce.price
        part.save
    end
    Faker::Number.between(10, 30).times do
        downtime = Downtime.new
        downtime.start_time = Faker::Time.between(6.months.ago, Date.today, :all)
        downtime.end_time = downtime.start_time + Faker::Number.between(5, 120).minutes
        downtime.machine_id = machine.id
        downtime.save
    end
end