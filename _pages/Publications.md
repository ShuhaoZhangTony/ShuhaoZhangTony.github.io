---
layout: main
permalink: /Publications/
title: Publications
description: For full list, please refere to <a href="https://scholar.google.com/citations?user=Xwn7lCEAAAAJ">Google Scholar</a>
years: [2021, 2020, 2019, 2017, 2016, 2015, 2014, 2013]
notitle: true
---

{% for y in page.years %}
  <h4>{{y}}</h4>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
