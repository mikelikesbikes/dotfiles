in_project_root do
  empty_directory project
end

project_dirs = %w(lib spec)

in_project_directory do
  project_dirs.each { |d| empty_directory d }
  create_file(".rvmrc") do
    "rvm use 1.9.2@#{project} --create"
  end

  create_file("spec/spec_helper.rb") do
<<-TXT
require 'rspec'
Dir.glob("lib/**/*.rb").each { |file| require "./\#{file}" }
TXT
  end

  create_file("Gemfile") do
<<-TXT
source :rubygems
gem 'rspec'
TXT
  end

  # run('bundle install')

  # run("rvm use 1.9.2@#{project} --create && bundle install")
end

system("cd #{project} && bundle install")

