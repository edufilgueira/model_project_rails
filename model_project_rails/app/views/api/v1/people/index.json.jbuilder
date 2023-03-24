json.people @people do |person|
  json.id person.id
  json.name person.name
  json.social_name person.social_name
  json.gender person.gender
  json.cpf person.cpf
  json.rg person.rg
  json.birth_date person.birth_date

  #json.source_system_name person.source_system&.name
end
