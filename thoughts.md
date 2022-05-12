---
title: Thoughts
---

Musings, ramblings, and ideas that I found valuable.

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>