class Users::RegistrationsController < Devise::RegistrationsController

	skip_before_action :verify_authenticity_token

	respond_to :json

	def create
      super
    end

end