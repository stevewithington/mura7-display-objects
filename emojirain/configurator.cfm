<cfparam name="objectparams.raindrops" default="250">
<cfparam name="objectparams.dropsize" default="40">

<cfoutput>
  <div class="mura-control-group">
      <label class="mura-control-label">Raindrops (<output for="sliderraindrops">#esapiEncode('html_attr', objectparams.raindrops)#</output>)</label>
      <input type="range" data-target="raindrops" id="sliderraindrops" min="10" max="1000" step="10" value="#esapiEncode('html_attr', objectparams.raindrops)#">
      <input type="hidden" class="objectParam" id="raindrops" name="raindrops" value="#esapiEncode('html_attr', objectparams.raindrops)#">
  </div>

  <div class="mura-control-group">
      <label class="mura-control-label">Dropsize (<output for="sliderdropsize">#esapiEncode('html_attr', objectparams.dropsize)#</output>)</label>
      <input type="range" data-target="dropsize" id="sliderdropsize" min="10" max="80" step="10" value="#esapiEncode('html_attr', objectparams.dropsize)#">
      <input type="hidden" class="objectParam" id="dropsize" name="dropsize" value="#esapiEncode('html_attr', objectparams.dropsize)#">
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
