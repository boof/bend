# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def eo(index, offset = 0, *classes)
    classes = %w[ even odd ] if classes.empty?
    modulo = classes.length

    classes.at index % modulo + offset % modulo
  end

end
