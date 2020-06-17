---
title: Galerie
layout: gallery
---
{::options parse_block_html="true" /}
<div class="gallery">
{% for post in site.lesende %}   
## <a href="{{ post.url }}">  {{ post.title }} </a>
{{ post.content }}
{% endfor %}
</div>
