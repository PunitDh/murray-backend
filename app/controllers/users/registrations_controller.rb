class Users::RegistrationsController < Devise::RegistrationsController
	respond_to :json

	private
		def respond_with(resource, _opt = {})
			if resource.persisted?
				register_success
			else
				register_failed
			end
		end

		def register_success
			render json: { message: "Signed up successfully!" }
		end

		def register_failed
			render json: { message: "We were unable to sign you up at this time." }
		end
end
