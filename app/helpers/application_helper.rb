module ApplicationHelper
  def error_messages_for(resource)
    return nil if resource.errors.empty?

    content_tag(:ul, class: 'error-messages') do
      safe_join(resource.errors.full_messages.map { |message| content_tag(:li, message) })
    end
  end
end
