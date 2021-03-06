var startslides;
$(function() {
  var autorotate = $('#slides').data('autorotate'),
      rotateInterval = $('#slides').data('rotate-interval') * 1000;

  var slides = $('#slides div.slide'),
      currentItem = 0,
      numItems = $('#slides ul#controls li a').length,
      runSlideShow = function() {
        var item = $('#slides ul#controls li a:eq('+currentItem+')');
          if (currentItem < numItems) {
            currentItem++;
			if (currentItem == numItems) {
				currentItem = 0;
			}
          }
		  item.trigger('custom', ['timer']);
      },

      selectSlide = function(e) {
        if ($(this).parent().hasClass('on')) {
          return false;
        } else {
          $('#slides ul#controls li').removeClass('on');
          $(this).parent().addClass('on');
          slides.hide();
          slides.filter(this.hash).show();
          return false;
        }
      };

  slides.hide();
  slides.filter(':first').show();
  $('#slides #controls li').filter(':first').addClass('on');
  $('#slides ul#controls li a').bind('custom', {}, selectSlide).
    each(function(i) { this.slideIndex=i; });
  $('#slides ul#controls li a').click(function() {
      $(this).trigger('custom');
      clearInterval(startslides);
      return false;
  });

  if (autorotate) {
    startslides = setInterval(runSlideShow, (rotateInterval < 1000 ? 1000 : rotateInterval));
  }
});