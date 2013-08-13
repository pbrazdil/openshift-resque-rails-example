class ExampleJob
  def self.queue
    :main
  end

  def self.perform(useless_param)
    sleep 10   #really hard task to do
  end
end
