class MatchShadow < Shadows::Base

  def controls
    @record.state.controls.map { |ctrl|
      image_tag = view.image_tag ctrl.image_basename
      path      = view.send ctrl.http_action, @record

      view.link_to image_tag, path, :title => ctrl.title, :method => ctrl.http_method
    }
  end

end

__END__
%tr
  %td.first.last{ :colspan => 4 }
    .first.column.span-11{ :style => 'text-align: right;' }= "#{ link_to 'Player 4', '' }, #{ link_to 'Player 1', '' }"
    .column.span-2{ :style => 'text-align: center;' } 6 : 3
    .last.column.span-11= "#{ link_to 'Player 5', '' }, #{ link_to 'Player 2', '' }"
%tr
  %td.first.last{ :colspan => 4 }
    .first.column.span-11{ :style => 'text-align: right;' }= "#{ link_to 'Player 4', '' }, #{ link_to 'Player 1', '' }"
    .column.span-2{ :style => 'text-align: center;' } 4 : 6
    .last.column.span-11= "#{ link_to 'Player 5', '' }, #{ link_to 'Player 2', '' }"
%tr
  %td.first.last{ :colspan => 4 }
    .first.column.span-11{ :style => 'text-align: right;' }= "#{ link_to 'Player 4', '' }, #{ link_to 'Player 1', '' }"
    .column.span-2{ :style => 'text-align: center;' } 6 : 2
    .last.column.span-11= "#{ link_to 'Player 5', '' }, #{ link_to 'Player 2', '' }"
