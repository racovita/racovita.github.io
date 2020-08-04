---
layout: default
title: Știri
permalink: /ro/news.html
lang: ro
ref: news
---

{% assign heading = site.data.menu | where: "title", "News" | first %}
<h2>{{ heading[page.lang] }}</h2>

{% assign posts=site.posts | where:"lang", page.lang %}
<ul>
{% for post in posts %}
    <li>
        <a href="{{ post.url | absolute_url }}">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>

