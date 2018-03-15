class WelcomeController < ApplicationController
  
  def home
  	@pics = Pic.all.desc('_id').limit(25).to_a
  end
end
