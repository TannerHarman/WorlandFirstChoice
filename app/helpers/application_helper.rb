module ApplicationHelper

  def login_helper(style=" ")
    if !current_user.is_a?(GuestUser)
    #   (link_to("Login", new_user_session_path, class: style)) +
    #   (link_to( "Register", new_user_registration_path, class: style))
    # else
      link_to("Logout", destroy_user_session_path, method: :delete, class: style)
    end
  end

  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def img(img, type)
    if img
      img
    elsif type == "thumb"
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator(alert)
    end
  end

  def alert_generator(msg)
    js add_gritter(msg, title: "Worland Physical Therapy", sticky: false)
  end
end