[Downtime, Part, Machine, User].each(&:delete_all)

machine = Machine.create do |m|
    m.manufacturer = "Sample Manufacturer Inc"
    m.model = "Example Machine 3000"
    m.name = "1A"
end

part = machine.parts.create do |p|
    p.manufacturer = "Sample Part Manufacturer LLC"
    p.model = "Example Machine Part"
    p.name = "L22-5A"
end

downtime = machine.downtimes.create do |d|
    d.start_time = Time.now - 90
    d.end_time = TIme.new - 30
end

admin = User.create do |a|
    a.email = "admin@example.com"
    a.encrypted_password = "uptime"
    a.admin = true
end

user = User.create do |u|
    u.email = "user@example.com"
    u.encrypted_password = "worktime"
end