class ApplicationController < ActionController::Base
  #protect_from_forgery with: :execption
  include DeviseWhitelist
  include SetSource
end
