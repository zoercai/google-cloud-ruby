# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

desc "Runs release-please."

flag :github_token, "--github-token=TOKEN", default: ENV["GITHUB_TOKEN"]
flag :install
remaining_args :gems, desc: "Release the specified gems. If no specific gem is provided, all gems are checked."

include :exec, e: true
include :terminal, styled: true

def run
  Dir.chdir context_directory
  if install
    exec ["npm", "install", "release-please"]
    exit
  end
  if gems.empty?
    set :gems, Dir.glob("*/*.gemspec").map { |path| File.dirname path }
  end
  gems.each { |gem_name| release_please gem_name }
end

def release_please gem_name
  version = gem_version gem_name
  puts "Running release-please for #{gem_name} from version #{version}", :bold
  cmd = [
    "npx", "release-please", "release-pr",
    "--package-name", gem_name,
    "--last-package-version", version,
    "--release-type", "ruby-yoshi",
    "--repo-url", "googleapis/google-cloud-ruby",
    "--bump-minor-pre-major"
  ]
  cmd += ["--token", github_token] if github_token
  log_cmd = cmd.inspect
  log_cmd.sub! github_token, "****" if github_token
  exec cmd, log_cmd: log_cmd
end

def gem_version gem_name
  func = proc do
    Dir.chdir gem_name do
      spec = Gem::Specification.load "#{gem_name}.gemspec"
      puts spec.version.to_s
    end
  end
  capture_proc(func).strip
end
