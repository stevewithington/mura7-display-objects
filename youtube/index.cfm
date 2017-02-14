<cfparam name="objectparams.youtubevideoid" default="UWuc18xISwI">
<cfparam name="objectparams.youtubeplayersize" default="640x480">

<cfoutput>
  <div class="my-youtube-container">
    <h2><i class="fa fa-youtube"></i> Google YouTube</h2>
    <google-youtube
          video-id="#esapiEncode('html_attr', objectparams.youtubevideoid)#"
          height="#ListLast(objectparams.youtubeplayersize, 'x')#px"
          width="#ListFirst(objectparams.youtubeplayersize, 'x')#px"
          rel="0"
          start="0"
          autoplay="0">
    </google-youtube>
  </div>

  <script>
    Mura(function(m) {
      m.loader()
        .load(
          m.themepath + '/display_objects/bower_components/google-youtube/google-youtube.html',
          m.themepath + '/display_objects/bower_components/webcomponentsjs/webcomponents-lite.min.js'
        );
    });
  </script>

  <style>
    google-youtube {
      margin-bottom: 2em;
    }
  </style>
</cfoutput>
