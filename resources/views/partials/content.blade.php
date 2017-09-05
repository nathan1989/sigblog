<article @php(post_class())>
  <header>
    <h2 class="entry-title"><a href="{{ get_permalink() }}">{{ get_the_title() }}</a></h2>
    @include('partials/entry-meta')
  </header>
  <div class="image-wrap">
    @if(is_front_page())
      <img src="http://lorempixel.com/600/400/" alt="">
    @else      
    <a href="{{ get_permalink() }}"><img src="http://lorempixel.com/300/300/" alt=""></a>
    @endif
  </div>
  <a href="{{ get_permalink() }}" class="more-link">Read more</a>
</article>