
module Jekyll
  class SoundCloud < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      if /(?<url>[A-Za-z0-9\/\-\:\.\_]+)(?:\s+(?<type>.*))?/ =~ markup
        @url = url
        @type = type 
        @markup = markup
      end
    end

    def render(context)
      if @type.include? "playlist"
        "<iframe width=\"100%\" height=\"450\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/#{@url}&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe>"
      else
        "<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=#{@url}\"></iframe>"
      end
    end
  end
end

Liquid::Template.register_tag('soundcloud', Jekyll::SoundCloud)