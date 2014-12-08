begin
contact_attributes = [
  { user_id: 1, email: 'paro_v@yahoo.com', provider: 'yahoo', name :'Parvathy'} ]
 

contact_attributes.each do |attributes|
  user = User.new(attributes)
  user.save
end

end