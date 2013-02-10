require 'minitest/autorun'
require 'sideband'

class EmailWorker < Sideband::Worker

  attr_reader :work

  def initialize
    @work = 'work'
  end

  def call
    @work = 'finished'
  end
end

def jruby?
  RUBY_PLATFORM =~ /java/
end
