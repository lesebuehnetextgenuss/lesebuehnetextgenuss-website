---
title: Galerie
layout: gallery
---

{::options parse_block_html="true" /}
<div class="gallery lightbox">
{% for post in site.galerie reversed %}   
## <a href="{{ post.url }}">  {{ post.title }} </a>
{{ post.content }}
{% endfor %}
</div>
