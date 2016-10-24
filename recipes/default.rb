#
# Cookbook Name:: aws-cloudwatchlogs
# Recipe:: default
#
# Copyright 2016, Alexandre Malucelli, All Rights Reserved.
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

if node['aws-cwlogs']['region'].nil?
   log('AWS Region is necessary for this cookbook.') { level :error }
   return
end

if node['aws-cwlogs']['aws_access_key_id'].nil?
   log('AWS Access Key is necessary for this cookbook.') { level :error }
   return
end

if node['aws-cwlogs']['aws_secret_access_key'].nil?
   log('AWS Secret Access Key is necessary for this cookbook.') { level :error }
   return
end

include_recipe 'aws-cloudwatchlogs::config'
include_recipe 'aws-cloudwatchlogs::install'