---
layout: page
title: Projects
permalink: /Projects/
description: 
---

<div class="img_row">
	<img class="col zero resize" src="{{ site.baseurl }}/assets/img/logo_full.png" alt=""/>
	<div class="col two caption_float">
  	Each project will be allocated 2-3 PhD students and 1-2 postdocs. More projects to be announced.
	</div>
	<div class="one caption">
	BIDS Group. 
	</div>
</div>


<ol>	
	    <li> <b>[TStream]</b>: we will build a novel hardware-conscious full-fledged transactional stream processing system. <br />
		    <ul>
		     <li> We will revisit every corner of the design of modern TSP system with novel techniques including AI, Modern Hardware (e.g., GPGPU, FPGA, etc.).  </li>
		     <li> Required Skills: well-understanding of transactional stream processing, skillful in system development, at least skillfull in one hardware architecture (multicore CPU, GPU, FPGA etc). </li>
     		     <li> Related Work: "BriskStream: Scaling Data Stream Processing on Shared-Memory Multicore Architectures, SIGMOD 2019", "Towards Concurrent Stateful Stream Processing on Multicore Processors, ICDE 2020". </li>
		   </ul>
	    </li>
	    <li> <b>[Sesame]</b>: we will build a novel data stream management system to support emerging complex applications such as real time fraud detection with reinforcement learning. <br />
	    	<ul>
		     <li> Those applications are hard, if not impossible, to be supported by conventional stream processing engines or ML/database systems. </li>
     		     <li> Required Skills: well-understanding of machine learning/data mining/graph algorithms/techniques, skillful in system development. </li>
     		     <li> Related Work: "SAMOA: Scalable Advanced Massive Online Analysis, JMLR 2015", "Real-time Event Detection on Social Data Streams, KDD 2019", "Sub-millisecond Stateful Stream Querying over Fast-evolving Linked Data, SOSP 2017" </li>
		</ul>
	    </li>
	<li> More projects to be announced.
	</li>
	Additional keywords<sup><a href="#fn1" id="ref1">1</a></sup>: <i> Modern Hardware, Timeseries, Internet of Things, Security </i>
</ol>

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
