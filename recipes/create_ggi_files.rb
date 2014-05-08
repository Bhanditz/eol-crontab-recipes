#
# Cookbook Name:: eol-crontab-recipes
# Recipe:: create_ggi_files
#
# Copyright 2014, Woods Hole Marine Biological Laboratory
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
#

cron "create_mapping_file" do
  hour "5"
  minute "0"
  day "4"  # Thursday
  command "/bin/bash -l -c 'cd /var/www/eol/current && bundle exec rake ggi:create_mapping_file RAILS_ENV=production'"
end

cron "create_data_file" do
  hour "5"
  minute "10"
  day "4"  # Thursday
  command "/bin/bash -l -c 'cd /var/www/eol/current && bundle exec rake ggi:create_data_file RAILS_ENV=production'"
end
