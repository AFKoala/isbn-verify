# require 'rubygems'
# require 'aws-sdk'
# require 'csv'
#   load "./local_env.rb" 
# def connect_to_s3()
#  Aws::S3::Client.new(
#     access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#     region: ENV['AWS_REGION'],
  
#   )
#   file = "testfile2.txt"
#   bucket = 'minedmindskata'
#   s3 = Aws::S3::Resource.new(region: 'us-east')
#   obj = s3.bucket(bucket).object(file)
#   # string data
#     obj.put(body: '"some code here to show something being added to the bucket."+ "\n"')
#     # push entire file 
#     File.open('isbn_output_test.csv', 'rb') do |file|
#         obj.put(body: file)
#     end
# end

require 'rubygems'
require 'aws-sdk'
require 'csv'
load "./local_env.rb" 
def push_b()
  Aws::S3::Client.new(
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: ENV['AWS_REGION'],
   )
  bucket = 'minedmindskata'
  file   = 'testfile2.txt'
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  obj = s3.bucket(bucket).object(file)
 
# # string data
obj.put(body: '"some code here to show something being added to the bucket."+ "\n"')
 
 #    obj.puts(body:'Hello World!')
   
  end
  push_b()

connect_to_s3