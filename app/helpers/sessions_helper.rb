module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    #下記コードと同じ内容
    #if @current_user
    #  return @current_user
    #else
    #  @current_user = User.find_by(id: session[:user_id])
    #  return @current_user
  end
  
    #loginでtrue,していなければfalse
  def logged_in?
    #インスタンスが存在していれば!(not)インスタンス=false,!false=trueとなる
    !!current_user
    #下記と一緒
    #if current_user
    #return true
    #else
    #return false
  end
end   
