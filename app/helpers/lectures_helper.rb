module LecturesHelper
  require 'embedly'
  require 'json'
  def display(url)
    embedly_api = Embedly::API.new :key => ENV['EMBEDLY_API_KEY'],
                                   :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)',
                                   :related => false
    obj = embedly_api.oembed :url => url
    obj.first.html
  end
end