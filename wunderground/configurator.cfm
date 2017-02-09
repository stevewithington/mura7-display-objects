<cfparam name="objectparams.wundergroundcity" default="Sacramento">
<cfparam name="objectparams.wundergroundcountry" default="CA">

<cfoutput>
    <div class="mura-control-group">
        <label class="mura-control-label">City</label>
        <input  type="text"
                name="wundergroundcity"
                class="objectParam"
                value="#esapiEncode('html_attr', objectparams.wundergroundcity)#">
    </div>

    <div class="mura-control-group">
        <label class="mura-control-label">State</label>
        <select class="objectParam" name="wundergroundcountry">
  				<option value="">Select State</option>
  				<cfloop list="AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS,MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,RI,SC,SD,TN,TX,UT,VA,VT,WA,WI,WV,WY" item="i">
  					<option <cfif objectParams.wundergroundcountry eq i>selected </cfif>value="#i#">#i#</option>
  				</cfloop>
  			</select>
    </div>
</cfoutput>
