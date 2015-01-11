module DeviseHelper
  def devise_error_messages!
    arr = resource.errors.full_messages
    arr << flash[:alert] if flash[:alert]
    arr << flash[:notice] if flash[:notice]
    arr
  end
end
