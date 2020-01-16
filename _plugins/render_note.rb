module Jekyll
  class RenderNoteTag < Liquid::Tag

    def initialize(tag_name,  input, tokens)
          super
      @input = input
    end

    def render(context)
    input_split = split_params(@input)
        title = input_split[0].strip
        text = input_split[1].strip
      " <div class=\"cd-timeline-block\">
               <div class=\"cd-timeline-img cd-picture\">
                   <img src=\"/img/cd-icon-location.svg\" alt=\"Picture\">
               </div>

               <div class=\"cd-timeline-content\">
                   <h2>#{title}</h2>
                   <p>#{text}</p>

                   <span class=\"cd-date\"></span>
               </div>
           </div> "
    end

    def split_params(params)
          params.split("|")
          end
end
  end

Liquid::Template.register_tag("taak", Jekyll::RenderNoteTag)

