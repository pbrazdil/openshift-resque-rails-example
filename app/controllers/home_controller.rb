class HomeController < ApplicationController
  def index
    Resque.enqueue(ExampleJob, "some-cool-parameter")
    render :text => "Job inserted! These jobs are remaining #{Resque.peek(:main, 0, 100).to_yaml}"
  end
end
