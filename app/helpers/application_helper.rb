module ApplicationHelper
	def alert(type, message)
		converter = { alert: 'error', notice: 'success', info: 'info' }
		button = content_tag :span, 'x', class: 'close', 'data-dismiss' => 'alert'
		content_tag :div, class: "alert alert-#{converter[type.to_sym]}"  do
			button + message
		end
	end
end
