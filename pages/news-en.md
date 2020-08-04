---
layout: default
title: News
permalink: /en/news.html
lang: en
ref: news
---

{% assign heading = site.data.menu | where: "title", "News" | first %}
<h2>{{ heading[page.lang] }}</h2>

{% assign posts=site.posts | where: "lang", page.lang %}
<ul>
{% for post in posts %}
    <li>
        <a href="{{ post.url | absolute_url }}">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>

