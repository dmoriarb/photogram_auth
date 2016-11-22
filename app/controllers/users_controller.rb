class UsersController < ApplicationController
  def usersindex
    @users = User.all
    render("users/usersindex.html.erb")
  end

def wall
  @user = User.find(params[:id])
  @photos = @user.photos
  render("users/wall.html.erb")
end

end
