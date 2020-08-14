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
end

# rubocop:enable Layout/LineLength
