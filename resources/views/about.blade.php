{{--
  Template Name: About Template
--}}

@extends('layouts.app')

@section('content')
  @while(have_posts()) @php(the_post()) 
    <div class="about-wrapper">
      <?php
      $image = get_field('about-image');
      if( !empty($image) ): ?>
      <div class="image-wrap">
        <!-- <img src="<?php echo $image['sizes'][ 'about-cropped-image' ]; ?>" alt="<?php echo $image['alt']; ?>" /> -->
        <img src="http://lorempixel.com/300/400/cats/" alt="" />
      </div>
      <?php endif; ?>
      <div class="content">
        @include('partials.page-header')   
        @include('partials.content-page')
      </div>
    </div>
  @endwhile
@endsection
