class HomeController < ApplicationController
  def index
    Resque.enqueue(ExampleJob, "some-cool-parameter")
    render :text => "Job inserted into the queue!"
  end
end
