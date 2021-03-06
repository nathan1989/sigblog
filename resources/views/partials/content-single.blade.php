<article @php(post_class())>
  <header class="post-single-header">
    <h1 class="entry-title">{{ get_the_title() }}</h1>
    @include('partials/entry-meta')
  </header>
  @if (has_post_thumbnail() && get_field('show_image'))
  <div class="image-wrap">
    @php(the_post_thumbnail('blog-large-image'))
  </div>
  @endif
  <div class="entry-content">
    @php(the_content())
  </div>
  <footer>
    {!! wp_link_pages(['echo' => 0, 'before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']) !!}
  </footer>
  @php comments_template('/partials/comments.blade.php') @endphp
</article>
