# Content Rotator Module for BrowserCMS

This module allows editors to create a rotating jquery based slideshow. Each rotator can have up to five slides, which can feature an image, title and text that can auto rotate, or allow users to click on a specific slide to view it. It is commonly used on home pages to feature lots of content within a small area, with some visual interest due to the rotation.

## Features

* _Rotator_ - Allows up to five slides in rotation. Staff can choose to enable autorotation, as well as how long between each slide.
* _Slides_ - Each slide represents a single frame within the rotation.
* _Preloading Slides_ - Editors can create as many slides as they like, and choose which slides should appear in the rotation and in what order.

### Slide Content Type

Each slide can consists of the following attributes:

* Title (String) 
* Alt Text (String)
* Image (File) - An uploaded image which will be shown as the background of the slide.
* Description (Html)
* Link Url (URL) - Determines where the user goes when they click the slide.
* Nav Title (String) - The name for the clickable link to changes slides (If left blank, it will show the name of the slide).


## Installation

Follow the standard bcms module installation found here: http://guides.browsercms.org/installing_modules.html. If you are adding this to an existing project, you will also need to manually seed the database after running the migrations, like so:

    $ rake db:migrate
    $ rake db:seed:bcms_content_rotator

Since this module relies on jquery, manually the javascript_include_tag to your page templates for any page that the slide show will appear on, like so:

	<head>
	    ...
		<%= javascript_include_tag 'jquery', :bcms_content_rotator %>
		<%= yield :html_head %>
	</head>
	
Once this is complete, you can add a new "Content Rotator Portlet" to any page. Create several slides, and edit the content rotator to choose the order.


### Customization Notes

* Each rotator's template is editable through the UI
* By default, each slide has a 'Read More >>' link that will link to the Link URL (if the URL is specified).

## Upgrading Notes

Upgrading this module from versions < 1.2.0 will require manual updates to the database.

* There is now one migration named bcms_content_rotator120.rb, with some new fields for attachments.
* The image_url column has been replaced with attachment ids.
* The portlet views have no javascript in them anymore (its now a separate js file), so it may be worth creating a new portlet and comparing the HTML view code.