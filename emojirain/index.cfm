<cfparam name="objectparams.raindrops" default="250">
<cfparam name="objectparams.dropsize" default="40">

<cfoutput>
  <div class="my-emojirain-container">
    <h2><i class="fa fa-smile-o"></i> Emoji Rain</h2>
    <button class="btn btn-primary" onclick="rain(this, false)" id="button-rain">Make it rain emojis!</button>
    <emoji-rain id="rainmaker" dropsize="#esapiEncode('html_attr', objectparams.dropsize)#" drops="#esapiEncode('html_attr', objectparams.raindrops)#"></emoji-rain>
  </div>
</cfoutput>

<script>
  Mura(function(m) { 
    m.loader() 
      .load(
        m.themepath + '/display_objects/bower_components/emoji-rain/emoji-rain.html',
        m.themepath + '/display_objects/bower_components/webcomponentsjs/webcomponents-lite.min.js'
      ); 
  });

  var rainmaker = document.getElementById('rainmaker');

  function rain(button) {
    if (rainmaker.active) {
      button.innerHTML = "Make it rain emojis!";
      rainmaker.active = false;
    } else {
      button.innerHTML = "Stop the rain!";
      rainmaker.active = true;
    }
  }
 </script>

<style>
  .my-emojirain-container {
    margin: 2em 0;
  }
</style>
