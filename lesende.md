---
title: Lesende
---

{::options parse_block_html="true" /}
<div id="lesende">
{% for post in site.lesende reversed %}   
## <a href="{{ post.url }}">  {{ post.title }} </a>
{{ post.content }}
{% endfor %}
</div>

<script type="text/javascript">
    window.onload = function () {
        const lesendeDiv = document.getElementById("lesende");
        const images = lesendeDiv.getElementsByTagName("img");
        console.log(images);
       for ( let i = 0; i < images.length; i+=1) {
           if (i % 2 !== 0) {
               images[i].classList.add("float-right");
           }
       };
    }
</script>