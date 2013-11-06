class MainController < ApplicationController
  def method_missing page
    if !Dir.glob(File.join(Rails.root, 'app', 'views', 'main', "#{page}.*")).blank?
      track! 'page load', :page => page unless tor?
    end
  end
end
