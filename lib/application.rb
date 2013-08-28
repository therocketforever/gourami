class Application < Sinatra::Base
  
  enable :inline_templates,:logging

  configure(:production) { Bundler.require(:production) }
  configure(:development) { Bundler.require(:development) }
  configure(:test) {}

  get "/style.css" do
    content_type :css, :charset => "utf-8"
    scss :style
  end

  get '/' do
    slim :index
  end

end