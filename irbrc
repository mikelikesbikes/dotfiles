require 'rubygems'
require 'interactive_editor'
require 'irb/completion'
require 'irb/ext/save-history'

require 'wirble'
Wirble.init
Wirble.colorize

require "ap"
IRB::Irb.class_eval do
  def output_value
    ap(@context.last_value)
  end
end

alias q exit

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:IRB_RC] = proc do |conf|
  name = "irb: "
  name = "rails: " if $0 == 'irb' && ENV['RAILS_ENV']
  leader = " " * name.length
  conf.prompt_i = "#{name}"
  conf.prompt_s = leader + '\-" '
  conf.prompt_c = leader + '\-+ '
  conf.return_format = ('=' * (name.length - 2)) + "> %s\n"
end

######### RAILS ONLY

if $0 == 'irb' && ENV['RAILS_ENV']
  require 'logger'
  Object.const_set(:RAILS_DEFAULT_LOGGER, Logger.new(STDOUT))
end
