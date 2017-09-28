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
      <h2 class="title"><i class="fa fa-instagram"></i></h2>
      <div class="insta-feed">      
    <?php
      function rudr_instagram_api_curl_connect( $api_url ){
        $connection_c = curl_init(); // initializing
        curl_setopt( $connection_c, CURLOPT_URL, $api_url ); // API URL to connect
        curl_setopt( $connection_c, CURLOPT_RETURNTRANSFER, 1 ); // return the result, do not print
        curl_setopt( $connection_c, CURLOPT_TIMEOUT, 20 );
        $json_return = curl_exec( $connection_c ); // connect and get json data
        curl_close( $connection_c ); // close connection
        return json_decode( $json_return ); // decode and return
      }
      
      $access_token = '192561124.9b9924d.a87109b736e147989c8bd2f69e473029';
      $username = 'siglouise';
      $user_search = rudr_instagram_api_curl_connect("https://api.instagram.com/v1/users/search?q=" . $username . "&access_token=" . $access_token);
      // $user_search is an array of objects of all found users
      // we need only the object of the most relevant user - $user_search->data[0]
      // $user_search->data[0]->id - User ID
      // $user_search->data[0]->first_name - User First name
      // $user_search->data[0]->last_name - User Last name
      // $user_search->data[0]->profile_picture - User Profile Picture URL
      // $user_search->data[0]->username - Username
      
      $user_id = $user_search->data[0]->id; // or use string 'self' to get your own media
      $return = rudr_instagram_api_curl_connect("https://api.instagram.com/v1/users/" . $user_id . "/media/recent?access_token=" . $access_token);
      
      // echo '<pre>';
      // var_dump( $return );
      // echo '</pre>';
      $i = 0;
      foreach ($return->data as $post) {
        $thumbnail = str_replace('s150x150/', 's320x320/', $post->images->thumbnail->url);
        if(++$i == 5) break;
        echo '<a href="' . $post->link . '" target="_blank"><img src="' . $thumbnail . '" class="image" /></a>';
      }
    ?>
    </div>
    </section>
  @endwhile
@endsection
