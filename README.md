# Intro To Mura 7 Display Objects

These files were used in the **Intro To Mura 7 Display Objects** presentation at [MuraCon 2017](http://www.muracon.com). Please also see http://docs.getmura.com/v7/videos/webinars/super-fast-app-dev-with-mura-7/ for a presentation with more information and code samples.

## PLEASE READ

### Minimum Requirements
* [Mura CMS](http://www.getmura.com) Core Version 7.0+
* [Adobe ColdFusion](http://www.adobe.com/coldfusion) 2016.0.02.299200
* [Lucee](http://lucee.org) 5.0.0.254

## Instructions
1. Copy all of the enclosed files into your theme's `display_objects` directory. For example: `{context}/includes/themes/{ThemeName}/display_objects/`.
2. Reload Mura
3. The new display objects should appear when using the *Inline Edit* mode in Mura 7+. See the Important Notes below for more information.

## Important Notes
* To use the **googlemap** example, you'll need a Google Maps API Key. Please visit https://developers.google.com/maps/documentation/javascript/get-api-key to obtain one.
* To use the **wunderground** example, you'll need a Wunderground API Key. Please visit https://developers.google.com/maps/documentation/javascript/get-api-key to obtain one.

Once you've obtained the desired API keys, go to the Mura CMS admin area. Visit `Site Settings > Edit Settings` and select the `Extended Attributes` tab. Then, enter your API keys into the appropriate fields, and click `Save Settings`.

## License
Copyright 2017 Stephen J. Withington, Jr. (and others -- see individual files for additional copyright holders).

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
