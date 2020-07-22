Jekyll::Hooks.register :posts, :pre_render do |post, payload|
  docExt = post.extname.tr('.', '')
  post.content.gsub!(/!\[[^\]]*\]\((.*?)\)(?:{(.*)?})?/, '{% responsive_image path: \1 \2 %}')
  post.content.gsub! 'path: /', 'path: ' #you can probably optimise this a bit
end
Jekyll::Hooks.register :pages, :pre_render do |post, payload|
  docExt = post.extname.tr('.', '')
  post.content.gsub!(/!\[[^\]]*\]\((.*?)\)(?:{(.*)?})?/, '{% responsive_image path: \1 \2 %}')
  post.content.gsub! 'path: /', 'path: ' #you can probably optimise this a bit
end
Jekyll::Hooks.register :lesende, :pre_render do |post, payload|
  docExt = post.extname.tr('.', '')
  post.content.gsub!(/!\[[^\]]*\]\((.*?)\)(?:{(.*)?})?/, '{% responsive_image path: \1 \2 template: _includes/responsive_image_lesende.html %}')
  post.content.gsub! 'path: /', 'path: ' #you can probably optimise this a bit
end
Jekyll::Hooks.register :galerie, :pre_render do |post, payload|
  docExt = post.extname.tr('.', '')
  post.content.gsub!(/!\[[^\]]*\]\((.*?)\)(?:{(.*)?})?/, '{% responsive_image path: \1 \2 template: _includes/responsive_image_gallery.html %}')
  post.content.gsub! 'path: /', 'path: ' #you can probably optimise this a bit
end