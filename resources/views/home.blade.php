{{--
  Template Name: Custom home Template
--}}

@extends('layouts.app')

@section('content')
  @while(have_posts()) @php(the_post())
    @include('partials.page-header')
    @include('partials.content-page')
    <h2>Latest post</h2>
    <?php 
		$wp_query = new WP_Query(); $wp_query->query('posts_per_page=1');
		while ($wp_query->have_posts()) : $wp_query->the_post(); ?>

      @include('partials/content')

		<?php endwhile; ?>

		<?php wp_reset_postdata(); ?>
  @endwhile
@endsection
