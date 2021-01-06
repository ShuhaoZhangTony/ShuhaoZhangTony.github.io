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
.tg .tg-gg5u{border-color:#000000;color:#000000;font-size:100%;font-style:italic;text-align:center;vertical-align:top}
.tg .tg-b411{border-color:#000000;color:#000000;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-pjk6{border-color:#000000;color:#000000;text-align:left;vertical-align:top}
.tg .tg-r6jj{background-color:#ffffc7;border-color:#000000;color:#000000;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-b411" colspan="5">Conference and Journal Cheat Sheet</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-gg5u">Type</td>
    <td class="tg-gg5u"><span style="font-weight:400">Abbreviation</span></td>
    <td class="tg-gg5u">Full name</td>
    <td class="tg-gg5u"><span style="font-weight:400">Catalog</span></td>
    <td class="tg-gg5u"><span style="font-weight:400">Rank</span></td>
  </tr>
  <tr>
    <td class="tg-pjk6">Conference</td>
    <td class="tg-pjk6">SIGMOD</td>
    <td class="tg-pjk6"><span style="font-weight:400">International Conference on Management of Data</span></td>
    <td class="tg-pjk6">Database</td>
    <td class="tg-pjk6">A+</td>
  </tr>
  <tr>
    <td class="tg-r6jj">Conference</td>
    <td class="tg-r6jj"><span style="font-weight:400;font-style:normal">PVLDB/VLDB</span></td>
    <td class="tg-r6jj"><span style="font-weight:400;font-style:normal">International Conference on Very Large Data Bases</span></td>
    <td class="tg-r6jj">Database</td>
    <td class="tg-r6jj">A+</td>
  </tr>
  <tr>
    <td class="tg-pjk6">Conference</td>
    <td class="tg-pjk6"><span style="font-weight:400;font-style:normal">IEEE ICDE</span></td>
    <td class="tg-pjk6"><span style="font-weight:400;font-style:normal">IEEE International Conference on Data Engineering</span></td>
    <td class="tg-pjk6">Database</td>
    <td class="tg-pjk6">A+</td>
  </tr>
  <tr>
    <td class="tg-r6jj">Conference</td>
    <td class="tg-r6jj"><span style="font-weight:400">IJCAI</span></td>
    <td class="tg-r6jj">International Joint Conference on Artificial Intelligence</td>
    <td class="tg-r6jj">AI</td>
    <td class="tg-r6jj">A+</td>
  </tr>
  <tr>
    <td class="tg-pjk6">Conference</td>
    <td class="tg-pjk6">USENIX ATC</td>
    <td class="tg-pjk6"><span style="font-weight:400;font-style:normal">USENIX Annual Technical Conference</span></td>
    <td class="tg-pjk6">Operating System</td>
    <td class="tg-pjk6">A</td>
  </tr>
  <tr>
    <td class="tg-r6jj">Conference</td>
    <td class="tg-r6jj"><span style="font-weight:400">SC</span></td>
    <td class="tg-r6jj"><span style="font-weight:400;font-style:normal">International Conference for High Performance Computing, Networking, Storage and Analysis</span></td>
    <td class="tg-r6jj"><span style="font-weight:400;font-style:normal">Distributed Computing</span></td>
    <td class="tg-r6jj">A</td>
  </tr>
  <tr>
    <td class="tg-pjk6">Conference</td>
    <td class="tg-pjk6"><span style="font-weight:400">MASCOTS</span></td>
    <td class="tg-pjk6">Symposium Model Analysis &amp; Simulation of Computer &amp; Telecommunications Systems</td>
    <td class="tg-pjk6"><span style="font-weight:400;font-style:normal">Distributed Computing</span></td>
    <td class="tg-pjk6">A</td>
  </tr>
  <tr>
    <td class="tg-r6jj">Journal</td>
    <td class="tg-r6jj">TPDS</td>
    <td class="tg-r6jj"><span style="font-style:italic">IEEE Transactions on Parallel and Distributed Systems</span></td>
    <td class="tg-r6jj"><span style="font-weight:400;font-style:normal">Distributed Computing</span></td>
    <td class="tg-r6jj">A*</td>
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
