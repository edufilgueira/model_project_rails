class Api::V1::PeopleController < Api::V1::ApiController

  PERMITTED_PARAMS = [
    :name,
    :cpf,
    :rg,
    :social_name,
    :birth_date,
    :gender_id,
    :breed_id
  ]

end
