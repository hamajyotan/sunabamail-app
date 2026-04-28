namespace :sunabamail do
  desc "Install Sunabamail"
  task :install do
    Rails::Command.invoke :generate, [ "sunabamail:install" ]
  end
end
