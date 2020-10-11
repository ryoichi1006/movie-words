class SessionsController < Devise::SessionsController

  def destroy
    reset_session
    redirect_to root_path
  end

end