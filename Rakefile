require 'rubygems'
require 'rake'
require 'fileutils'

include FileUtils

HOMEDIR = File.expand_path('~')
DOTFILES_REPO_DIR = File.join(HOMEDIR, '.dotfiles')

desc 'link Sublime Text 2 Preferences'
task 'link:sublime-prefs' => ['link:dotfiles-repo'] do
  # backup whatever User settings already exist
  user_prefs_dir = File.expand_path('~/Library/Application Support/Sublime Text 2/Packages/User')

  if File.exists?(user_prefs_dir)
    puts "backing up User Preferences (#{user_prefs_dir})..."
    mv user_prefs_dir, "#{user_prefs_dir}.#{Time.now.to_i}.bak"
  end

  # create link to versioned preferences
  ln_s File.join(DOTFILES_REPO_DIR, 'sublime_text_2', 'Packages', 'User'), user_prefs_dir
end

desc 'link the dotfiles repo to the home directory'
task 'link:dotfiles-repo' do
  if File.symlink?(DOTFILES_REPO_DIR) && File.readlink(DOTFILES_REPO_DIR) == pwd
    return
  end

  puts "linking '#{DOTFILES_REPO_DIR}' to '#{pwd}'"
  ln_s pwd, DOTFILES_REPO_DIR
end

desc 'link home directory dot files'
task 'link:home-dir' do
end