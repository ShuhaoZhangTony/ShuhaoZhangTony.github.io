---
layout: page
permalink: /Publications/
title: Publications
description: For full list, please refere to <a href="https://scholar.google.com/citations?user=Xwn7lCEAAAAJ">Google Scholar</a>
years: [2020, 2019, 2017, 2016, 2015, 2014, 2013]
---

{% for y in page.years %}
  <h3 class="year">{{y}}</h3>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
