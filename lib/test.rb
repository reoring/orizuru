require 'Orizuru'
client = Orizuru.create('http://192.168.50.4:8080', 'a99b101ccea0d8327831c4a12472c7cc8fbb425389772afc56862307277ef9b3')

client.apps.each do |app|
  p app.name
  p app.repository
  app.units.each do |unit|
    p unit.id
  end
end
