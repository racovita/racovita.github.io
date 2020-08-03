---
layout: default
title: Nouvelles
permalink: /fr/news/
lang: fr
ref: news
---


{% assign posts=site.posts | where:"lang", page.lang %}
<ul>
{% for post in posts %}
    <li>
        <a href="{{ post.url | absolute_url }}">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>

