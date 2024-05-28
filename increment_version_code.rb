# increment_version_code.rb
require 'fileutils'

# Path to your project's build.gradle file
gradle_file_path = "android/app/build.gradle"

# Read the contents of the file
gradle_file_content = File.read(gradle_file_path)

# Use a regular expression to find the versionCode line and increment it
new_gradle_file_content = gradle_file_content.gsub(/versionCode\s+(\d+)/) do |match|
  "versionCode #{$1.to_i + 1}"
end

# Write the new content back to the file
File.open(gradle_file_path, "w") { |file| file.write(new_gradle_file_content) }

puts "Version code incremented successfully!"
