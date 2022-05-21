class ApplicationController < ActionController::Base
	# layout "main"
	  # layout "abc"

	before_action :print_display_message
    after_action :after_display_message
	private

	def print_display_message
		puts "I am an inheritaed before action"
		
	end

	def after_display_message
		puts "==============================="
		
	end
end
