module ApplicationHelper

  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to("Login", new_user_session_path, class: "nav-link")) +
      (link_to( "Register", new_user_registration_path, class: "nav-link"))
    else
      link_to("Logout", destroy_user_session_path, method: :delete, class: "nav-link")
    end
  end
end
