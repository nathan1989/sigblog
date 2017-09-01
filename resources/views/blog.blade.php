{{--
  Template Name: Blog Template
--}}

@extends('layouts.app')

@section('content')
  @while(have_posts()) @php(the_post())
    @include('partials.page-header')
    @include('partials.content-page')
		<?php 
		$wp_query = new WP_Query(); $wp_query->query('posts_per_page=5' . '&paged='.$paged);
		while ($wp_query->have_posts()) : $wp_query->the_post(); ?>

      @include('partials/content')

		<?php endwhile; ?>

		<?php if ($paged > 1) { ?>

      <nav id="nav-posts">
        <div class="prev"><?php next_posts_link('&laquo; Previous Posts'); ?></div>
        <div class="next"><?php previous_posts_link('Newer Posts &raquo;'); ?></div>
      </nav>

		<?php } else { ?>

      <nav id="nav-posts">
        <div class="prev"><?php next_posts_link('&laquo; Previous Posts'); ?></div>
      </nav>

		<?php } ?>

		<?php wp_reset_postdata(); ?>
  @endwhile
@endsection
