<article @php(post_class())>
  <header>
    <h2 class="entry-title"><a href="{{ get_permalink() }}">{{ get_the_title() }}</a></h2>
    @include('partials/entry-meta')
  </header>
  <div class="image-wrap">
    <a href="{{ get_permalink() }}">
    @if(is_front_page())
      <img src="http://lorempixel.com/800/800/" alt="">
    @else
      <img src="http://lorempixel.com/300/300/" alt="">
    @endif
    </a>
  </div>
  <a href="{{ get_permalink() }}" class="more-link">Read more</a>
</article>