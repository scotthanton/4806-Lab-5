$(document).on 'page:change', ->    
	c_word = ""
	$("#blogpost_contents").keypress (e) -> #update this line with correct selector and event
		if c_word == ""
			$('#suggestions').html("<b>Suggestions:</b> ")
	
		inp = String.fromCharCode(e.which) # get the 1-character string that the user typed
		if (inp.length == 1 && inp.match(/[a-z]/i)) 
			c_word += inp #add letter to current word
			return
		else
			alert('http://localhost:3000/spellcheck/'+c_word);
			$.getJSON 'http://localhost:3000/spellcheck/'+c_word, (data) -> 
				if (data.known == "false")
					$('#suggestions').html("<b>Suggestions:</b> ")	
					for s in data.suggestions
						$('#suggestions').append(s + ',')
					return
			c_word = ""
			return
