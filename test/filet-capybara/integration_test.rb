require 'test_helper'

feature "Capybara Integration", %{
  As a mantainer of filet
  I want to make it easier to integrate with Capybara
  In order to get more users for the project
} do

  scenario "features should include the capybara dsl" do
    assert self.class.ancestors.include?(Capybara::DSL)
  end

  context "javascript integration", :js => true do
    scenario "scenario driver is the javascript_driver" do
      assert_equal Capybara.javascript_driver, Capybara.current_driver
    end

    scenario "after teardown the driver is the default" do
      assert_not_equal Capybara.default_driver, Capybara.current_driver
      teardown
      assert_equal Capybara.default_driver, Capybara.current_driver
    end
  end
end
