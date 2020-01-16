require 'faker'

categories = [ 'Games', 'Toys' , 'Movies', 'Books', 'Food' ]

categories.each do |category|
  c = Category.find_or_create_by(name:category)
  4.times.each do

    Shop.create([category: c, name: Faker::Name.unique.name])
  end
end

User.create({ email: 'ale@guro', password: 'gainmax22'})