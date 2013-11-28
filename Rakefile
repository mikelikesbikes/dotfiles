require 'rubygems'
require 'rake'
require 'fileutils'

desc 'link Sublime Text 2 Preferences'
task 'st2:link_prefs' do
  include FileUtils
  dotfiles_repo = pwd

  prefs_dir = File.expand_path('~/Library/Application Support/Sublime Text 2/Packages')

  # backup whatever User settings already exist
  user_prefs_dir = File.join(prefs_dir, "User")

  if File.exists?(user_prefs_dir)
  	puts "backing up User Preferences..."
	mv user_prefs_dir, "#{user_prefs_dir}.#{Time.now.to_i}.bak"
  end

  # create link to versioned preferences
  ln_s File.join(dotfiles_repo, 'sublime_text_2', 'Packages', 'User'), user_prefs_dir
end