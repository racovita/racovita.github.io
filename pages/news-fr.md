---
layout: default
title: Nouvelles
permalink: /fr/news.html
lang: fr
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

