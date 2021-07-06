class Users::SessionsController < Devise::SessionsController
	respond_to :json

	private
		def respond_with(resource, opts = {})
			render json: { message: "Youre logged in" }, status: :ok
			print "You're logged in"
		end

		def respond_to_on_destroy
			if current_user
				log_out_success
			else
				logout failure
			end
		end

		def log_out_success
			render json: { message: "You're logged out" }, status: :ok
		end

		def log_out_failure
			render json: { message: "Logout failed" }, status: :unauthorized
		end
end
