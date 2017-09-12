require 'rubygems'
require 'aws-sdk'
require 'csv'
  load "./local_env.rb" 
def connect_to_s3()
 Aws::S3::Client.new(
    access_key_id: ENV['AWS_ACCSESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_REGION'],
  
  )
  file = "testfile.txt"
  bucket = 'minedmindskata'
  s3 = Aws::S3::Resource.new(region: 'us-east')
  obj = s3.bucket(bucket).object(file)
  # string data
    obj.put(body: '"some code here to show something being added to the bucket."+ "\n"')
    # push entire file 
end