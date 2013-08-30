$ ->
	resetHeight()
	setScroll()
	clockStart()
resetHeight = ->
	$(".screen").css 'height',if window.innerHeight < 600 then '600px' else window.innerHeight
setScroll = ->
	$('#nav').localScroll 800
	$('#intro').parallax "50%", 0.1
	$('#second').parallax "50%", 0.1
	$('.bg').parallax "50%", 0.4
	$('#third').parallax "50%", 0.3
clockStart = ->
	clock = $('.your-clock').FlipClock
		countdown: true