/*	################################################################
	File Name: custom.js
	Template Name: D'one
	Created By: Shah Zobayer Ahmed
	http://themencoder.com

	1) PRELOADER
	2) FIX MENU
	3) YOUTUBE VIDEO
    4) OWL QUOTE ACTIVATION
    5) ISOTOPE WORK
    6) OWL CLIENT ACTIVATION
    7) OWL TESTIMONIAL ACTIVATION
    8) SKILL PROGRESS BAR
    9) COUNTER UP
    10) NICESCROLL

################################################################# */

$('document').ready(function() {


    $(".navbar-toggle").click(function(){
        $(this).toggleClass("mbl-menu");
    });
    /*==============================
        PRELOADER
    ===============================*/
    (function($){
        $(window).load(function() {
    	    $('#preloader').hide();
        });
    })(jQuery);

    /*==============================
       FIX MENU
    ==============================*/
    (function($){
        // menu fixed
        var navHeight = window.innerHeight - 86;
        var nav = $('.header-section');
        $(window).scroll(function () {
            if ($(this).scrollTop() > navHeight ) {
                nav.addClass("fixed");
            } else {
                nav.removeClass("fixed");
            }
        });

        var lastId,
        topMenu = $("#top-menu"),
        topMenuHeight = topMenu.outerHeight()+15,
        menuItems = topMenu.find("a"),
        scrollItems = menuItems.map(function(){
            var item = $($(this).attr("href"));
            if (item.length) { return item; }
        });

        // so we can get a fancy scroll animation
        menuItems.click(function(e){
            var href = $(this).attr("href"),
                offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;
            $('html, body').stop().animate({
                scrollTop: offsetTop
            }, 300);
            e.preventDefault();
        });

        // Bind to scroll
        $(window).scroll(function(){
            var fromTop = $(this).scrollTop()+topMenuHeight;
            var cur = scrollItems.map(function(){
                if ($(this).offset().top < fromTop)
                return this;
            });
           cur = cur[cur.length-1];
           var id = cur && cur.length ? cur[0].id : "";
           if (lastId !== id) {
                lastId = id;
                menuItems
                 .parent().removeClass("active")
                 .end().filter("[href=#"+id+"]").parent().addClass("active");
            }
        });
    })(jQuery);

    /* LINK SCROLL ANIMATION */
    (function($){
        $('.go-to-about').click(function(){
            $('html, body').animate({
                scrollTop: $( $(this).attr('href') ).offset().top
            }, 500);
            return false;
        });
    })(jQuery);


    /*==============================
        OWL QUOTE ACTIVATION
    ==============================*/
    (function($){
        var owl = $("#quote");
        owl.owlCarousel({
            items : 1,
            itemsDesktop : [1000,1],
            itemsDesktopSmall : [900,1],
            itemsTablet: [600,1],
            itemsMobile : false
        });

        // Custom Navigation Events
        $(".quote-next").click(function(){
            owl.trigger('owl.next');
        })
        $(".quote-prev").click(function(){
            owl.trigger('owl.prev');
        })
    })(jQuery);

    /*==============================
        ISOTOPW WORK
    ==============================*/
    (function($){
        var selectedCategory;
        var $grid = $('.work').isotope({
            itemSelector: '.col-md-3',
            masonry: {
                columnWidth: '.col-md-3',
            },
            getSortData: {
                selectedCategory: function( itemElem ) {
                    return $( itemElem ).hasClass( selectedCategory ) ? 0 : 1;
                }
            }
      });
      var $items = $('.work').find('.work-item');

      $('.sort-button-group').on( 'click', '.button', function() {
        selectedCategory = $( this ).attr('data-category');
        if ( selectedCategory == 'all' ) {
            $grid.isotope({
                sortBy: 'original-order'
            });
            $items.css({
                opacity: 1
            });
            return;
        }
        var selectedClass = '.' + selectedCategory;
        $items.filter( selectedClass ).css({
            opacity: 1
        });
        $items.not( selectedClass ).css({
            opacity: 0
        });
        $grid.isotope('updateSortData');
        $grid.isotope({ sortBy: 'selectedCategory' });
      });

      $('.button-group').each( function( i, buttonGroup ) {
            var $buttonGroup = $( buttonGroup );
            $buttonGroup.on( 'click', 'li', function() {
                $buttonGroup.find('.active').removeClass('active');
                $( this ).addClass('active');
            });
      });

    })(jQuery);

    (function($){
        $('.work').isotope({
        itemSelector: '.work-item',
        layoutMode: 'masonry'
        });
    })(jQuery);

    /*==============================
        OWL CLIENT ACTIVATION
    ==============================*/
    (function($){
        var owl = $("#client");
        owl.owlCarousel({
            items : 5,
            itemsDesktop : [1000,5],
            itemsDesktopSmall : [900,3],
            itemsTablet: [600,1],
            itemsMobile : false
        });
        $(".client-next").click(function(){
            owl.trigger('owl.next');
        })
        $(".client-prev").click(function(){
            owl.trigger('owl.prev');
        })
    })(jQuery);

    /*==============================
        OWL TESTIMONIAL ACTIVATION
    ==============================*/
    (function($){
        var owl = $("#testimonial");
        owl.owlCarousel({
            items : 1,
            itemsDesktop : [1000,1],
            itemsDesktopSmall : [900,1],
            itemsTablet: [600,1],
            itemsMobile : false
        });
        $(".testimonial-next").click(function(){
            owl.trigger('owl.next');
        })
        $(".testimonial-prev").click(function(){
            owl.trigger('owl.prev');
        })
    })(jQuery);

    /*==============================
        SKILL PROGRESS BAR
    ==============================*/
    (function($){
        jQuery('.skillbar').each(function() {
			jQuery(this).appear(function() {
				jQuery(this).find('.count-bar').animate({
					width:jQuery(this).attr('data-percent')
				},3000);
				var percent = jQuery(this).attr('data-percent');
				jQuery(this).find('.count').html('<span>' + percent + '</span>');
			});
		});
    })(jQuery);

    /*==============================
        COUNTER UP
    ==============================*/
    (function($){
        jQuery('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    })(jQuery);

    /*==============================
        JQUERY NICESCROLL
    ==============================*/
    (function($){
        $("html").niceScroll({
            cursorborder:"",
            cursorcolor:"#00F",
            boxzoom:false,
            scrollspeed:60,
            cursorcolor: "#fbd202",
            cursorwidth: "5px",
            zindex: "9999999",
            mousescrollstep:40,
            enablemousewheel: true,
        });
   })(jQuery);

    /*==============================
        PRETTY PHOTO
    ==============================*/
    (function($){
        $("area[data-gal^='prettyPhoto']").prettyPhoto();
        $(".gallery:first a[data-gal^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'pp_default',slideshow:3000, autoplay_slideshow: false, social_tools:''});
        $(".gallery:gt(0) a[data-gal^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
    })(jQuery);

    /*==============================
        TOP BUTTON
    ==============================*/
    (function ($) {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 600) {
                $('#easy-top').fadeIn(100);
            } else {
                $('#easy-top').fadeOut(0);
            }
        });
        $('#easy-top').click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, {
                duration: 2000,
                easing: "easeOutBounce"
            });
        });
    })(jQuery);

    (function($){
         (function() {
          var Util,
            __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

          Util = (function() {
            function Util() {}

            Util.prototype.extend = function(custom, defaults) {
              var key, value;
              for (key in custom) {
                value = custom[key];
                if (value != null) {
                  defaults[key] = value;
                }
              }
              return defaults;
            };

            Util.prototype.isMobile = function(agent) {
              return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(agent);
            };

            return Util;

          })();

          this.WOW = (function() {
            WOW.prototype.defaults = {
              boxClass: 'wow',
              animateClass: 'animated',
              offset: 0,
              mobile: true
            };

            function WOW(options) {
              if (options == null) {
                options = {};
              }
              this.scrollCallback = __bind(this.scrollCallback, this);
              this.scrollHandler = __bind(this.scrollHandler, this);
              this.start = __bind(this.start, this);
              this.scrolled = true;
              this.config = this.util().extend(options, this.defaults);
            }

            WOW.prototype.init = function() {
              var _ref;
              this.element = window.document.documentElement;
              if ((_ref = document.readyState) === "interactive" || _ref === "complete") {
                return this.start();
              } else {
                return document.addEventListener('DOMContentLoaded', this.start);
              }
            };

            WOW.prototype.start = function() {
              var box, _i, _len, _ref;
              this.boxes = this.element.getElementsByClassName(this.config.boxClass);
              if (this.boxes.length) {
                if (this.disabled()) {
                  return this.resetStyle();
                } else {
                  _ref = this.boxes;
                  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                    box = _ref[_i];
                    this.applyStyle(box, true);
                  }
                  window.addEventListener('scroll', this.scrollHandler, false);
                  window.addEventListener('resize', this.scrollHandler, false);
                  return this.interval = setInterval(this.scrollCallback, 50);
                }
              }
            };

            WOW.prototype.stop = function() {
              window.removeEventListener('scroll', this.scrollHandler, false);
              window.removeEventListener('resize', this.scrollHandler, false);
              if (this.interval != null) {
                return clearInterval(this.interval);
              }
            };

            WOW.prototype.show = function(box) {
              this.applyStyle(box);
              return box.className = "" + box.className + " " + this.config.animateClass;
            };

            WOW.prototype.applyStyle = function(box, hidden) {
              var delay, duration, iteration;
              duration = box.getAttribute('data-wow-duration');
              delay = box.getAttribute('data-wow-delay');
              iteration = box.getAttribute('data-wow-iteration');
              return box.setAttribute('style', this.customStyle(hidden, duration, delay, iteration));
            };

            WOW.prototype.resetStyle = function() {
              var box, _i, _len, _ref, _results;
              _ref = this.boxes;
              _results = [];
              for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                box = _ref[_i];
                _results.push(box.setAttribute('style', 'visibility: visible;'));
              }
              return _results;
            };

            WOW.prototype.customStyle = function(hidden, duration, delay, iteration) {
              var style;
              style = hidden ? "visibility: hidden; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;" : "visibility: visible;";
              if (duration) {
                style += "-webkit-animation-duration: " + duration + "; -moz-animation-duration: " + duration + "; animation-duration: " + duration + ";";
              }
              if (delay) {
                style += "-webkit-animation-delay: " + delay + "; -moz-animation-delay: " + delay + "; animation-delay: " + delay + ";";
              }
              if (iteration) {
                style += "-webkit-animation-iteration-count: " + iteration + "; -moz-animation-iteration-count: " + iteration + "; animation-iteration-count: " + iteration + ";";
              }
              return style;
            };

            WOW.prototype.scrollHandler = function() {
              return this.scrolled = true;
            };

            WOW.prototype.scrollCallback = function() {
              var box;
              if (this.scrolled) {
                this.scrolled = false;
                this.boxes = (function() {
                  var _i, _len, _ref, _results;
                  _ref = this.boxes;
                  _results = [];
                  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                    box = _ref[_i];
                    if (!(box)) {
                      continue;
                    }
                    if (this.isVisible(box)) {
                      this.show(box);
                      continue;
                    }
                    _results.push(box);
                  }
                  return _results;
                }).call(this);
                if (!this.boxes.length) {
                  return this.stop();
                }
              }
            };

            WOW.prototype.offsetTop = function(element) {
              var top;
              top = element.offsetTop;
              while (element = element.offsetParent) {
                top += element.offsetTop;
              }
              return top;
            };

            WOW.prototype.isVisible = function(box) {
              var bottom, offset, top, viewBottom, viewTop;
              offset = box.getAttribute('data-wow-offset') || this.config.offset;
              viewTop = window.pageYOffset;
              viewBottom = viewTop + this.element.clientHeight - offset;
              top = this.offsetTop(box);
              bottom = top + box.clientHeight;
              return top <= viewBottom && bottom >= viewTop;
            };

            WOW.prototype.util = function() {
              return this._util || (this._util = new Util());
            };

            WOW.prototype.disabled = function() {
              return !this.config.mobile && this.util().isMobile(navigator.userAgent);
            };

            return WOW;

          })();

        }).call(this);


        wow = new WOW(
          {
            animateClass: 'animated',
            offset: 100
          }
        );
        wow.init();
    })(jQuery);

});



