# encoding: utf-8

Dado /^os seguintes amigos cadastrados:$/ do |friends|
  visit root_path
  
  locations = {
    "Porto Alegre"  => [-30.034028, -51.226501],
    "Canoas"        => [-29.919233, -51.178436],
    "Viamão"        => [-30.080978, -51.016388],
    "Guaiba"        => [-30.124937, -51.324692],
    "São Leopoldo"  => [-29.760801, -51.15097],
    "Novo Hamburgo" => [-29.68507,  -51.128311]
  }
  
  table.hashes.each do |row|
    find('[rel="add-friend"]').click
    fill_in 'friend_name', with: row[:nome]
    fill_in 'friend_latitude',  with: locations[row[:cidade]][0]
    fill_in 'friend_longitude', with: locations[row[:cidade]][1]
  end
end

Dado /^que eu estou visitando "([^"]*)"$/ do |arg1|
  pending
end

Então /^os três amigos mais próximos devem ser "([^"]*)", "([^"]*)" e "([^"]*)"$/ do |arg1, arg2, arg3|
  pending
end