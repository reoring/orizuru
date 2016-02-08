require 'Orizuru'
client = Orizuru.create('http://192.168.50.4:8080', 'Use your tsuru token')

client.apps.each do |app|
  p app.name
  p app.repository
  app.units.each do |unit|
    p unit.id
  end
end
