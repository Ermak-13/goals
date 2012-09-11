jQuery ->	
	$('#add-interest').click () ->
		interest = { name : $('input.interest-name').val() }
		$.ajax(
			url: '/interests'
			type: 'post'
			data: { interest: interest }
			success: (data) ->
				partial = Mustache.render $('.interest.template').html(), data
				$('#interests-container').append(partial)
		)

	$('.remove-interest').live 'click', (event) ->
		event.preventDefault()
		id = $(@).data('id')
		$.ajax(
			url: '/interests/' + id
			type: 'delete'
			success: (data) =>
				element = $(@).attr('href')
				$(element).remove()
		)
		false