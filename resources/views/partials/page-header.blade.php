<div class="page-header">
  @if(is_front_page())
    <h1>Latest post</h1>
  @else
    <h1>{!! App\title() !!}</h1>
  @endif
  @if (category_description())
  {!! category_description() !!}
  @endif
</div>
