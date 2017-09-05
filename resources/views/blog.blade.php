{{--
  Template Name: Blog Template
--}}

@extends('layouts.app')

@section('content')
  @while(have_posts()) @php(the_post())
    @include('partials.page-header')
    @include('partials.content-page')

    <div class="blog-list">
		@php($wp_query = new WP_Query())
    {{$wp_query->query('posts_per_page=5' . '&paged='.$paged)}}
		@while ($wp_query->have_posts()){{$wp_query->the_post()}}
      @include('partials/content')
		@endwhile
		{{wp_reset_postdata()}}
    </div>
  @endwhile
@endsection
