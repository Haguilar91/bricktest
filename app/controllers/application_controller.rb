class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def after_sign_in_path_for(user)
        # your path goes here
        documents_path # as an example
    end
end
