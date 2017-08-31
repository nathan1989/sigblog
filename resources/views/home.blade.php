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
      $args = array( 'numberposts' => '1' );
      $recent_posts = wp_get_recent_posts( $args );
      foreach( $recent_posts as $recent ){
        echo '<h1><a href="' . get_permalink($recent["ID"]) . '">' .   $recent["post_title"].'</a> </h1> ';
        echo '<div>' . $recent["post_content"] . '</div>';
      }
      wp_reset_query();
    ?>
  @endwhile
@endsection
