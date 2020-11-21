---
layout: page
title: TStream
description: Transactional Stream Processing Engine on Multicores
img: /assets/img/tstreamicon.png
---

With the increasing adoption of stream processing in
emerging use cases, we believe that an efficient concurrent
stateful DSPS becomes more and more desirable. TStream
demonstrates that efficient concurrent state access during
stream processing can be elegantly supported with its novel
dual-mode scheduling and dynamic restructuring execution
mechanism on modern multicore architectures. In particular, it
guarantees state consistency, while judiciously exploits more
parallelism opportunities – both within the processing of each
input event and among a (tunable) batch of input events.

 
<div class="img_row">
    <img class="col three" src="{{ site.baseurl }}/assets/img/tstream_fig1.png" alt="" title="Why TStream?"/>
</div>
<div class="col three caption">
   As the number of cores used increases, the overhead of accessing states quickly dominates other operations due to serious contention. Therefore, we need a new solution for scaling concurrent state access during stream processing.
</div>


 

 
