module ApplicationHelper

  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (content_tag(:div, "#{link_to "Login", new_user_session_path}".html_safe)) +
      (content_tag(:div, "#{link_to "Register", new_user_registration_path}".html_safe))
    end
  end
end
