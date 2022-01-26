class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resorce)
    if current_user
      render partial: '/start_questions/index.html.erb' 
      flash[:notice] = "ログインに成功しました" 
        root_url  #指定したいパスに変更
      else
        flash[:notice] = "ログインできませんでした。" 
        
      end
  end
  
  def after_sign_out_path_for(resource)
    if current_user
      flash[:notice] = "ログアウトしました" 
        root_url  #指定したいパスに変更
      else
        flash[:notice] = "ログインしています。" 
        new_profile_path  #指定したいパスに変更
      end
  end



  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  

  protected

  def configure_permitted_parameters
    added_attrs = [ :username, :email, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit  :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end



end
