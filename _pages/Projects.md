---
layout: main
title: Projects
permalink: /Projects/
description: Each project will be allocated 2-3 PhD students and 1-2 postdocs. 
notitle: true
---
You are welcomed to visit our official project website: <a href="https://people.sutd.edu.sg/~zhangsh/">https://people.sutd.edu.sg/~zhangsh/</a> for detailed information and recent updates of our research projects.

<ol>	
	<li> <b>[AlianceDB]</b>: we will build novel relational stream data management system on modern hardware architectures.
		<ul>
     		     <li> Required Skills: well-understanding of database systems and algorithms, good programming skills. </li>
     		     <li> Related Work: "Parallelizing Intra-Window Join on Multicores: An Experimental Study, SIGMOD 2021"</li>
     		     <li> Project Link: <a href="https://github.com/ShuhaoZhangTony/AllianceDB">https://github.com/ShuhaoZhangTony/AllianceDB</a></li>
     		     <li> Key Fundings:"partially supported by  a SUTD Startup Grant  (100K SGD)"</li>
     		     <li> Team Members: Shuhao Zhang, Xianzhi Zeng (RA/PhD incoming)</li>
     		    <!-- <li> External Advisors: Bingsheng He (NUS), Volker Markl (TU Berlin)</li>-->
		</ul>
	</li>		    
	    <li> <b>[Sesame]</b>: we will build a novel continuous AI system to support emerging complex applications such as real time fraud detection with reinforcement learning on cloud edge. <br />
	    	<ul>
<!--		     <li> Those applications are hard, if not impossible, to be supported by conventional stream processing engines or ML/database systems. </li>-->
     		     <li> Required Skills: well-understanding of machine learning/data mining/graph algorithms/techniques, skillful in system development. </li>
     		     <li> Related Work: "SAMOA: Scalable Advanced Massive Online Analysis, JMLR 2015", "Real-time Event Detection on Social Data Streams, KDD 2019", "Sub-millisecond Stateful Stream Querying over Fast-evolving Linked Data, SOSP 2017" </li>
     		     <li> Project Link: (to be announced)</li> 
     		     <li> Key Fundings:"partially supported by a SUTD AI Program (150K SGD)"</li>
     		     <!--<li> Team Members: Shuhao Zhang, Huilin Wu (MSc@TU Berlin)</li>-->
     		     <!--<li> External Advisors: Juan Soto (TU Berlin), Volker Markl (TU Berlin)</li>-->
		</ul>
	    </li>
	    <li> <b>[TStream]</b>: we will build a novel hardware-conscious full-fledged transactional stream processing (TSP) system. <br />
		    <ul>
		     <li> We will revisit every corner of the design of modern TSP system with novel techniques including AI, Modern Hardware (e.g., GPGPU, FPGA, etc.).  </li>
		     <li> Required Skills: well-understanding of transactional stream processing, skillful in system development, at least skillfull in one hardware architecture (multicore CPU, GPU, FPGA etc). </li>
     		     <li> Related Work: "BriskStream: Scaling Data Stream Processing on Shared-Memory Multicore Architectures, SIGMOD 2019", "Towards Concurrent Stateful Stream Processing on Multicore Processors, ICDE 2020". </li>
     		     <li> Project Link (tentative): <a href=
     		     "https://github.com/Xtra-Computing/briskstream">https://github.com/Xtra-Computing/briskstream</a></li>
     		     <!--<li> Key Fundings:"to be announced"</li>-->
     		     <!--<li> Team Members: Shuhao Zhang, Aqif Hamid (MSc@TU Berlin)</li>-->
     		    <!-- <li> External Advisors: Juan Soto (TU Berlin), Volker Markl (TU Berlin)</li>-->
		   </ul>
	    </li>
</ol>

<!--
<hr/>

{% for project in site.projects %}

{% if project.redirect %}
<div class="project">
    <div class="thumbnail">
        <a href="{{ project.redirect }}" target="_blank">
        {% if project.img %}
        <img class="thumbnail" src="{{ project.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ project.title }}</h1>
            <br/>
            <p>{{ project.description }}</p>
        </span>
        </a>
    </div>
</div>
{% else %}

<div class="project ">
    <div class="thumbnail">
        <a href="{{ project.url | prepend: site.baseurl | prepend: site.url }}">
        {% if project.img %}
        <img class="thumbnail" src="{{ project.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ project.title }}</h1>
            <br/>
            <p>{{ project.description }}</p>
        </span>
        </a>
    </div>
</div>

{% endif %}

{% endfor %}
-->
