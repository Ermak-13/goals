jQuery ->
	faye = new Faye.Client('http://localhost:9292/faye')
	faye.subscribe '/comments/new', (data) -> eval(data)