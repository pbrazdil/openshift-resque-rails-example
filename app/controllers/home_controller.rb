class HomeController < ApplicationController
  def index
    Resque.enqueue(ExampleJob, "some-cool-parameter")
    render :text => "Job inserted! Jobs currently in the queue waiting to process: #{Resque.peek(:main, 0, 1000).size} "
  end

end
