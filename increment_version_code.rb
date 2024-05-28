file_path = "./android/app/build.gradle"
version_code_pattern = /versionCode\s+(\d+)/
version_name_pattern = /versionName\s+"([.\d]+)"/

gradle_file = File.read(file_path)
new_gradle_file = gradle_file.gsub(version_code_pattern) { |match| "versionCode #{$1.to_i + 1}" }

File.write(file_path, new_gradle_file)

puts "Version code incremented successfully."
