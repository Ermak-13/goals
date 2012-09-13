module ApplicationHelper
  def broadcast(channel, &block)
    message = {:channel => channel, :data => capture(&block)}
    uri = URI.parse("http://localhost:9292/faye")
    Net::HTTP.post_form(uri, :message => message.to_json)
  end

	def alert!
		html = String.new
		flash.each { |key, value| html = message(key, value) }
		html.html_safe
	end

	def message(type, message)
		converter = { alert: 'error', notice: 'success', info: 'info' }
		button = content_tag :span, 'x', class: 'close', 'data-dismiss' => 'alert'
		content_tag :div, class: "alert alert-#{converter[type.to_sym]}"  do
			button + message
		end
	end

	def data_source(interests, column)
		interests.map(&column).to_json
	end
end
