@php
if (post_password_required()) {
  return;
}
@endphp

<section id="comments" class="comments">
  @if (have_comments())

    @if (get_comments_number() > 1)
    <h2>{!! get_comments_number() !!} comments</h2>
    @else
    <h2>{!! get_comments_number() !!} comment</h2>
    @endif

    @php(comment_form())

    <ol class="comment-list">
      {!! wp_list_comments(['style' => 'ol', 'short_ping' => true]) !!}
    </ol>

    @if (get_comment_pages_count() > 1 && get_option('page_comments'))
      <nav>
        <ul class="pager">
          @if (get_previous_comments_link())
            <li class="previous">@php(previous_comments_link(__('&larr; Older comments', 'sage')))</li>
          @endif
          @if (get_next_comments_link())
            <li class="next">@php(next_comments_link(__('Newer comments &rarr;', 'sage')))</li>
          @endif
        </ul>
      </nav>
    @endif
  @endif

  @if (!comments_open() && get_comments_number() != '0' && post_type_supports(get_post_type(), 'comments'))
    <div class="alert alert-warning">
      {{ __('Comments are closed.', 'sage') }}
    </div>
  @endif
</section>
