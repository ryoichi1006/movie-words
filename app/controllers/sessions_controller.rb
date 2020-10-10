class SessionsController < Devise::SessionsController

  def destroy
    # super
    # session[:keep_signed_out] = true
    reset_session
    redirect_to root_path
  end

end