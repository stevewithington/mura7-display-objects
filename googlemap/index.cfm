<cfparam name="objectparams.gmaplat" default="38.579069">
<cfparam name="objectparams.gmaplon" default="-121.4918191">
<cfparam name="objectparams.gmapzoom" default="10">

<cfoutput>
  <div id="my-googlemap-container">
    <h2><i class="fa fa-map"></i> Google Map</h2>
    <google-map id="gmap-#esapiEncode('html_attr', objectparams.objectid)#" fit-to-marker api-key="#$.siteConfig('gmapapikey')#" latitude="#esapiEncode('html_attr', objectparams.gmaplat)#" longitude="#esapiEncode('html_attr', objectparams.gmaplon)#" zoom="#esapiEncode('html_attr', objectparams.gmapzoom)#">
      <google-map-marker latitude="#esapiEncode('html_attr', objectparams.gmaplat)#" longitude="#esapiEncode('html_attr', objectparams.gmaplon)#" draggable="true"></google-map-marker>
    </google-map>
  </div>

  <script>
    Mura(function(m) {
      m.loader()
        .load(
          m.themepath + '/display_objects/bower_components/google-map/google-map.html',
          m.themepath + '/display_objects/bower_components/webcomponentsjs/webcomponents-lite.min.js'
        );
    });
  </script>

  <style>
    google-map {
      height: 300px;
      margin: 2em 0;
      border: 1px solid black;
    }
  </style>
</cfoutput>
