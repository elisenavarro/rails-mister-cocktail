class ApplicationController < ActionController::Base
  # verifiy user authentication with every POST request
  protect_from_forgery with: :exception
end
