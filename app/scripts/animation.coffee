$ ->
	resetHeight()
	setScroll()
	clockStart()
	swInit()
resetHeight = ->
	$("div.screenplot").css 'height',window.innerHeight
setScroll = ->
	$('#nav').localScroll 800
	#$('#logo').parallax 0, 0.1
	$('#second').parallax "50%", 0.1
	$('.bg').parallax "50%", 0.4
	$('#third').parallax "50%", 0.3
clockStart = ->
	clock = $('#yourclock').FlipClock
		clockFace: 'DailyCounter'
		countdown: true
		autostart: true
	d = new Date().getTime()
	clock.setTime(86400*16)
swInit = ->
	$('#wizard').smartWizard
		selected: 0
		transitionEffect: 'fade'
		labelFinish: 'Submit'
		enableFinishButton: false
		enableAllSteps: false
		noForwardJumping: true
		contentCache: true