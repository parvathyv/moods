contact_attributes = [
  { name: 'Eric', description: 'Kelly', instructions: '1234567890' },
  { name: 'Eric', description: 'Kelly', instructions: '1234567890' } ]
 

contact_attributes.each do |attributes|
  contact = Recipe.new(attributes)
  contact.save
end

ingredient_attributes = [
  { name: 'Eric', recipe_id: '1234567890' },
  { name: 'Eric', recipe_id: '1234567890' } ]
 

ingredient_attributes.each do |attributes|
  contact = Ingredient.new(attributes)
  contact.save
end