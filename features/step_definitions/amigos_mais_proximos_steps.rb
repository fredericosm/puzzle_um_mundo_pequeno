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
  
  friends.hashes.each do |row|
    find('[rel="add-friend"]').click
    fill_in 'friend_name', with: row[:nome]
    lat, lng = locations[row[:local]]
    fill_in 'friend_latitude', with: lat
    fill_in 'friend_longitude', with: lng
    click_button :submit
  end
end

Dado /^que eu estou visitando "([^"]*)"$/ do |arg1|
  pending
end

Então /^os três amigos mais próximos devem ser "([^"]*)", "([^"]*)" e "([^"]*)"$/ do |arg1, arg2, arg3|
  pending
end