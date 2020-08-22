# rubocop:disable Layout/LineLength

module ApplicationHelper
  def like_or_dislike(opinion)
    @like = current_user.likes.find_by(opinion_id: opinion)
    if @like
      link_to "<i class='text-danger far fa-thumbs-down fa-2x'></i>".html_safe, like_path(opinion_id: opinion, id: current_user.id), method: :delete
    else
      link_to "<i class='text-success far fa-thumbs-up fa-2x'></i>".html_safe, likes_path(opinion_id: opinion), method: :post
    end
  end

  def image_check(user_image)
    if user_image.attached?
      link_to image_tag(user_image, class: 'img-fluid rounded'), user_path(current_user)
    else
      link_to image_tag('http://www.gravatar.com/avatar', class: 'rounded'), user_path(current_user)
    end
  end

  def image_check_right(user_image)
    if user_image.attached?
      link_to image_tag(user_image, class: 'img-fluid rounded-circle'), user_path(current_user)
    else
      link_to image_tag('http://www.gravatar.com/avatar', class: 'rounded-circle'), user_path(current_user)
    end
  end

  def image_check_cover(user_image)
    if user_image.attached?
      link_to image_tag(user_image, class: 'cover-image'), user_path(current_user)
    else
      link_to image_tag('http://www.gravatar.com/avatar', class: 'gravatar-cover'), user_path(current_user)
    end
  end
end

# rubocop:enable Layout/LineLength
