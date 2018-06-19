{{--
  Template Name: Custom home Template
--}}

@extends('layouts.app')

@section('content')
  @while(have_posts()) @php(the_post())
    @include('partials.page-header')
    @include('partials.content-page')

    <div class="insta-section">
      <div class="insta-feed">
        <?php echo wdi_feed(array('id'=>'1')); ?>
      </div>
    </div>
  @endwhile
@endsection
