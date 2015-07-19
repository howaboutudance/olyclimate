class UsersController < ApplicationController
	validates :email, presense: true, length: { maximum: 255 }
  def new
  end
end
