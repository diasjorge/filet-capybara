require "filet-capybara/version"
require "filet-capybara/javascript"

require "capybara"
require "capybara/dsl"

require "filet"

Filet.feature_hook do |base, options|
  base.send :include, ::Capybara::DSL
  base.send(:include, Filet::Capybara::Javascript) if options[:js]
end

Filet.context_hook do |base, options|
  base.send(:include, Filet::Capybara::Javascript) if options[:js]
end

include Filet


