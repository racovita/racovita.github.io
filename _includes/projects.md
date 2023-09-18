{% assign heading = "" %}
{% for topic in site.data.bosco2023 %}
  {% if topic.topic == "heading" %}
    {% assign heading = topic %}
  {% endif %}
{% endfor %}

[{{ heading.heading[page.lang] }}](activities/bosco2023/bosco2023.html), {{ heading.location }}, {{ heading.date[page.lang]}}.
