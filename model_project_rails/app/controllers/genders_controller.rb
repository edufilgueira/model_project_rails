class GendersController < BaseController
  before_action :authenticate_user!

  PERMITTED_PARAMS = [
    :name
  ]

end
