# Content Rotator Module for BrowserCMS

This module allows editors to create a rotating jquery based slideshow. Each rotator can have up to five slides, which can feature an image, title and text that can auto rotate, or allow users to click on a specific slide to view it. It is commonly used on home pages to feature lots of content within a small area, with some visual interest due to the rotation.

## Features

* _Rotator_ - Allows up to five slides in rotation. Staff can choose to enable autorotation, as well as how long between each slide.
* _Slides_ - A content type consisting of:
** Title (String)
** Alt Text (String)
** Image URL (URL)
** Description (Html)
* _Preloading Slides_ - Editors can create as many slides as they like, and choose which slides should appear in the rotation and in what order.


## Installation

Follow the standard bcms module installation found here: http://guides.browsercms.org/installing_modules.html

Since this module relies on jquery, manually the javascript_include_tag to your page templates for any page that the slide show will appear on, like so:

	<head>
	    ...
		<%= javascript_include_tag 'jquery' %>
		<%= yield :html_head %>
	</head>
	
Once this is complete, you can add a new "Content Rotator Portlet" to any page. Create several slides, and edit the content rotator to choose the order.