class WelcomeController < ApplicationController
  def index
    render :text => "<a href='/hm?foos[name]=Joe'>click me</a>"
  end

  def hm
    # I'd expect this to look up by the primary key (for some weird reason,
    # i called it foos). But it's looking it up by the name
    # if params[:foos] = {:foos => {:name => 'A name'}}
    render :text => ERB::Util.html_escape(Foo.find_by_foos(params[:foos]).inspect)
  end
end
