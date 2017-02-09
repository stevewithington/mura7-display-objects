<cfparam name="objectparams.gmaplat" default="38.579069">
<cfparam name="objectparams.gmaplon" default="-121.4918191">
<cfparam name="objectparams.gmapzoom" default="10">

<cfoutput>
  <div class="mura-control-group">
      <label class="mura-control-label">Latitude</label>
      <input  type="text"
              name="gmaplat"
              class="objectParam"
              value="#esapiEncode('html_attr', objectparams.gmaplat)#">
  </div>

  <div class="mura-control-group">
      <label class="mura-control-label">Longitude</label>
      <input  type="text"
              name="gmaplon"
              class="objectParam"
              value="#esapiEncode('html_attr', objectparams.gmaplon)#">
  </div>

  <div class="mura-control-group">
      <label class="mura-control-label">Map Zoom (<output for="slidergmapzoom">#esapiEncode('html_attr', objectparams.gmapzoom)#</output>)</label>
      <input type="range" data-target="gmapzoom" id="slidergmapzoom" min="0" max="20" step="1" value="#esapiEncode('html_attr', objectparams.gmapzoom)#">
      <input type="hidden" class="objectParam" id="gmapzoom" name="gmapzoom" value="#esapiEncode('html_attr', objectparams.gmapzoom)#">
  </div>

  <script>
    $('input[type="range"]').change(function() {
      var t = $(this)
          , o = $('output[for="' + t.attr('id')  + '"]')
          , i = $('input[name="' + t.data('target') + '"]');

      o.html(t.val());
      i.val(t.val()).trigger('change');
    });
  </script>

  <style>
    output {
      display: inline;
    }
    input[type="range"] {
      margin: 2em 0;
    }
  </style>
</cfoutput>
