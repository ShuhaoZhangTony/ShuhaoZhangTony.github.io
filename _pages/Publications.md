---
layout: main
permalink: /Publications/
title: Publications
description: For full list, please refere to <a href="https://scholar.google.com/citations?user=Xwn7lCEAAAAJ">Google Scholar</a>
years: [2021, 2020, 2019, 2017, 2016, 2015, 2014, 2013]
notitle: true
---
My publications span multiple catalogs including *Database*, *AI*, *Operating System*, and *Distributed Computing*.
We target at top (i.e., A/A+) conferences/journals. The full conference/journal ranking list can be found at the [CORE List](https://www.core.edu.au/conference-portal), [NUS taochen List](http://www.cs.jhu.edu/~taochen/SoC_Conference_Ranking.html) or  [CCF](https://www.ccf.org.cn/Academic_Evaluation/CN/).

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-kwiq{border-color:inherit;color:#000000;text-align:left;vertical-align:top}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-ncd7{background-color:#ffffc7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
.tg .tg-m9r4{background-color:#ffffc7;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-7btt" colspan="5">Conference and Journal Cheat Sheet</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-kwiq">Type</td>
    <td class="tg-kwiq"><span style="font-weight:400;font-style:normal">Abbreviation</span></td>
    <td class="tg-kwiq">Full name</td>
    <td class="tg-kwiq"><span style="font-weight:400;font-style:normal">Catalog</span></td>
    <td class="tg-kwiq"><span style="font-weight:400;font-style:normal">Rank</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">Conference</td>
    <td class="tg-0pky">SIGMOD</td>
    <td class="tg-0pky"><span style="font-weight:400">International Conference on Management of Data</span></td>
    <td class="tg-0pky">Database</td>
    <td class="tg-0pky">A+</td>
  </tr>
  <tr>
    <td class="tg-ncd7">Conference</td>
    <td class="tg-ncd7"><span style="font-weight:400;font-style:normal">PVLDB/VLDB</span></td>
    <td class="tg-ncd7"><span style="font-weight:400;font-style:normal">International Conference on Very Large Data Bases</span></td>
    <td class="tg-ncd7">Database</td>
    <td class="tg-ncd7">A+</td>
  </tr>
  <tr>
    <td class="tg-0lax">Conference</td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal">IEEE ICDE</span></td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal">IEEE International Conference on Data Engineering</span></td>
    <td class="tg-0lax">Database</td>
    <td class="tg-0lax">A+</td>
  </tr>
  <tr>
    <td class="tg-m9r4">Conference</td>
    <td class="tg-m9r4"><span style="font-weight:400">IJCAI</span></td>
    <td class="tg-m9r4">International Joint Conference on Artificial Intelligence</td>
    <td class="tg-m9r4">AI</td>
    <td class="tg-m9r4">A+</td>
  </tr>
  <tr>
    <td class="tg-0lax">Conference</td>
    <td class="tg-0lax">USENIX ATC</td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal">USENIX Annual Technical Conference</span></td>
    <td class="tg-0lax">Operating System</td>
    <td class="tg-0lax">A</td>
  </tr>
  <tr>
    <td class="tg-m9r4">Conference</td>
    <td class="tg-m9r4"><span style="font-weight:400">SC</span></td>
    <td class="tg-m9r4"><span style="font-weight:400;font-style:normal">International Conference for High Performance Computing, Networking, Storage and Analysis</span></td>
    <td class="tg-m9r4"><span style="font-weight:400;font-style:normal">Distributed Computing</span></td>
    <td class="tg-m9r4">A</td>
  </tr>
  <tr>
    <td class="tg-0lax">Conference</td>
    <td class="tg-0lax"><span style="font-weight:400">MASCOTS</span></td>
    <td class="tg-0lax">Symposium Model Analysis &amp; Simulation of Computer &amp; Telecommunications Systems</td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal">Distributed Computing</span></td>
    <td class="tg-0lax">A</td>
  </tr>
  <tr>
    <td class="tg-m9r4">Journal</td>
    <td class="tg-m9r4">TPDS</td>
    <td class="tg-m9r4"><span style="font-style:italic">IEEE Transactions on Parallel and Distributed Systems</span></td>
    <td class="tg-m9r4"><span style="font-weight:400;font-style:normal">Distributed Computing</span></td>
    <td class="tg-m9r4">A*</td>
  </tr>
</tbody>
</table>

- <strong>A+</strong> : flagship conference/journal, a leading venue in a discipline area
- <strong>A</strong>  : excellent conference/journal, and highly respected in a discipline area
- <strong>B</strong>  : good conference/journal, and well regarded in a discipline area
- <strong>Others</strong> : generally not encouraged unless for special reason, e.g., short communication survey at SIGMOD Record.

---
{% for y in page.years %}
  <h4>{{y}}</h4>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
