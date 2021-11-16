class UsersController < ApplicationController
  before_action :logged_user, :authenticate_user!


  def logged_user; end

end