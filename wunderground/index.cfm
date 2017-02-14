<cfparam name="objectparams.wundergroundcity" default="Sacramento">
<cfparam name="objectparams.wundergroundcountry" default="CA">

<cfoutput>
  <div class="my-wunderground-container">
    <h2><i class="fa fa-sun-o"></i> Wunderground</h2>
    <h3>#esapiEncode('html', objectparams.wundergroundcity)#, #esapiEncode('html', objectparams.wundergroundcountry)#</h3>
    <wunderground-forecast id="wf-#esapiEncode('html_attr', objectparams.objectid)#" key="#$.siteConfig('wundergroundapikey')#" city="#esapiEncode('html_attr', objectparams.wundergroundcity)#" country="#esapiEncode('html_attr', objectparams.wundergroundcountry)#"></wunderground-forecast>
  </div>

  <script>
    Mura(function(m) {
      m.loader()
        .load(
          m.themepath + '/display_objects/bower_components/wunderground-forecast/wunderground-forecast.html',
          m.themepath + '/display_objects/bower_components/webcomponentsjs/webcomponents-lite.min.js'
        );
    });

    var wf = document.querySelector('wunderground-forecast##wf-#esapiEncode('javascript', objectparams.objectid)#');
    wf.autoStart = true;
  </script>

  <style>
    .my-wunderground-container h3 {
      text-align: center;
    }
    wunderground-forecast {
      margin: 2em 0;
    }
  </style>
</cfoutput>
