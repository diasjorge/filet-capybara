module Filet
  module Capybara
    module Javascript
      def self.included(base)
        base.class_eval %{
          background do
            ::Capybara.current_driver = ::Capybara.javascript_driver
          end

          teardown do
            ::Capybara.reset_sessions!
            ::Capybara.use_default_driver
          end
        }
      end
    end
  end
end
