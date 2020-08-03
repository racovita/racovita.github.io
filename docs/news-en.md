---
layout: default
title: News
permalink: /en/news/
lang: en
ref: news
---


{% assign posts=site.posts | where:"lang", page.lang %}
<ul>
{% for post in posts %}
    <li>
        <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>


# Translations
<ul>
{% assign pages=site.pages | where:"ref", page.ref | sort: 'lang' %}
{% for page in pages %}
  <a href="{{ page.url }}" class="{{ page.lang }}">{{ page.lang
  }}</a> |
{% endfor %}
</ul>
