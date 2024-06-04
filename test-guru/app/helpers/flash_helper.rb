module FlashHelper
  def flash_messages
    flash.each do |type, message|
      concat(content_tag(:div, message, class: "flash #{type}"))
    end
    nil
  end
end