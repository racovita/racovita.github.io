---
layout: default
title: Nachrichten
permalink: /de/news.html
lang: de
ref: news
---

<h2>{{ site.data.menu[page.lang].news }}</h2>

{% assign posts=site.posts | where:"lang", page.lang %}
<ul>
{% for post in posts %}
    <li>
        <a href="{{ post.url | absolute_url }}">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>

