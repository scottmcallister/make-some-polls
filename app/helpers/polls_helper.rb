# TODO: change to Bootstrap 4 markup
module PollsHelper
  def visualize_votes_for(option)
    content_tag :progress, value: "#{option.poll.normalized_votes_for(option)}", max: "100" do
      content_tag :div, class: 'progress' do
        content_tag :div, class: 'progress-bar',
                    style: "width: #{option.poll.normalized_votes_for(option)}%" do
          "#{option.votes.count}"
        end
      end
    end
  end
end
