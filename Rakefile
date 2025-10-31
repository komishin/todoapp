# Ruby 3.3以降で削除された FileTest.exists? を互換目的で復活
module FileTest
  class << self
    alias_method :exists?, :exist?
  end
end

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks
