class HomeController < ApplicationController
  def index
    Resque.enqueue(ExampleJob, "some-cool-parameter")
    render :text => "Job inserted! Jobs currently in the queue waiting to process: #{Resque.peek(:resize, 0, 100).size} "
  end

end
