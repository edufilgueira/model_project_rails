class PeopleController < BaseController
  before_action :authenticate_user!

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
