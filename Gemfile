source 'https://rubygems.org'
gem "fastlane"

# You may use http://rbenv.org/ or https://rvm.io/ to install and use this version
ruby ">= 2.6.10"
gem "bundler", "~> 2.5"
gem 'cocoapods', '~> 1.13'
gem 'activesupport', '>= 6.1.7.3', '< 7.1.0'
gem 'fastlane-plugin-versioning'
gem 'fastlane-plugin-aws_s3', '~> 2.1'
gem "fastlane-plugin-versioning_android"

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
