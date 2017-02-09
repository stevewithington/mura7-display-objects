<cfparam name="objectparams.youtubevideoid" default="UWuc18xISwI">
<cfparam name="objectparams.youtubeplayersize" default="640x480">

<cfoutput>
  <div class="mura-control-group">
      <label class="mura-control-label">YouTube Video ID</label>
      <input  type="text"
              name="youtubevideoid"
              class="objectParam"
              value="#esapiEncode('html_attr', objectparams.youtubevideoid)#">
  </div>

  <div class="mura-control-group">
		<label>Video Player Size</label>
		<select class="objectParam" name="youtubeplayersize">
      <optgroup label="16:9 Wide Aspect Ratio">
  			<cfloop list="512x288,768x432,1024x576,1280x720" item="i">
  				<option <cfif objectParams.youtubeplayersize eq i>selected </cfif>value="#i#">#i#</option>
  			</cfloop>
      </optgroup>

      <optgroup label="4:3 Standard Aspect Ratio">
        <cfloop list="320x240,384x288,448x336,512x384,576x432,640x480" item="x">
  				<option <cfif objectParams.youtubeplayersize eq x>selected </cfif>value="#x#">#x#</option>
  			</cfloop>
      </optgroup>
		</select>
	</div>
</cfoutput>
