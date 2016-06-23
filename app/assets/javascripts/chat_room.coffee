# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->

	$(document).on("click", "#start_dictation", (e)->
		if window.hasOwnProperty('webkitSpeechRecognition')
			recognition = new webkitSpeechRecognition()

			recognition.continuous = false
			recognition.interimResults = false

			recognition.lang = "en-US"
			recognition.start()

			recognition.onresult = (e)->				
				$('#transcript').val(e.results[0][0].transcript)
				recognition.stop()
				$('#labnol').submit()

			recognition.onerror = (e)->
				recognition.stop()
	)

	$("#start_dictation").click()