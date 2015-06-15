module CoursesHelper
  def action_buttons(course)
    if current_user
      if course.bought(current_user) && current_user.admin == false
        if course.price > 0
          link_to "Buy for &euro; ".html_safe+course.price.to_s, new_course_trade_path(course), class: "btn btn-danger"
        else
          link_to "FREE",course_trades_path(course), method: :post, class: "btn btn-success"
        end
      else
        link_to "Bought", course_path(course), class: "btn btn-success btn"
      end
    else
      if course.price > 0
        link_to "Buy for &euro; ".html_safe+course.price.to_s, new_course_trade_path(course), class: "btn btn-danger"
      else
        link_to "FREE",course_trades_path(course), method: :post, class: "btn btn-success"
      end
    end
  end
end

