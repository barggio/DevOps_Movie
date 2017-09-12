class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_host

  def get_host
    @hostname = ENV['HOSTNAME'] || 'Anonymous'
  end
end
