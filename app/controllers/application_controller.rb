class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_sign_in_path_for(resource)
    if resource.admin?
      # Redirect to the admin categories page
      admin_categories_path
    else
      # Redirect to the regular categories page
      categories_path
    end
  end

end
