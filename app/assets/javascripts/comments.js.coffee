jQuery ->
	faye = new Faye.Client('http://localhost:9292/faye')
	faye.subscribe '/comments/new', (data) -> 
		partial = Mustache.render $('.comment.template').html(), data
		$('#comments-container').append partial