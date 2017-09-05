{{--
  Template Name: Custom home Template
--}}

@extends('layouts.app')

@section('content')
  @while(have_posts()) @php(the_post())
    @include('partials.page-header')
    @include('partials.content-page')
    <?php 
		$wp_query = new WP_Query(); $wp_query->query('posts_per_page=1');
		while ($wp_query->have_posts()) : $wp_query->the_post(); ?>

      @include('partials/content')

		<?php endwhile; ?>

		<?php wp_reset_postdata(); ?>

    <section class="insta-section">
      <h2 class="title">Instagram feed</h2>
      <div class="insta-feed">
        @for ($i = 0; $i < 4; $i++)
          <a href="#"><img src="http://lorempixel.com/180/180/" alt="" class="image"></a>
        @endfor
      </div>
    </section>
  @endwhile
@endsection
