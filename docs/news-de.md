---
layout: default
title: Nachrichten
permalink: /de/news/
lang: de
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


# Übersetzungen
<ul>
{% assign pages=site.pages | where:"ref", page.ref | sort: 'lang' %}
{% for page in pages %}
  <a href="{{ page.url }}" class="{{ page.lang }}">{{ page.lang
  }}</a> |
{% endfor %}
</ul>
