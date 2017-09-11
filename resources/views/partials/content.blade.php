<article @php(post_class())>
  <header>
    <h2 class="entry-title"><a href="{{ get_permalink() }}">{{ get_the_title() }}</a></h2>
    @include('partials/entry-meta')
  </header>
  @if (has_post_thumbnail())
    <div class="image-wrap">
      @if(is_front_page())
        @php(the_post_thumbnail('blog-large-image'))
      @else      
      <a href="{{ get_permalink() }}">@php(the_post_thumbnail('blog-small-image'))</a>
      @endif
    </div>
  @endif
  <a href="{{ get_permalink() }}" class="more-link">Read more</a>
</article>