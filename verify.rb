require 'rubygems'
require 'aws-sdk'
require 'csv'

def isbn_function(user_given_isbn)
    no_space_or_dash_isbn = user_given_isbn.delete(' -')

    answer_array = []

    if no_space_or_dash_isbn !~ /\D/
        
        if no_space_or_dash_isbn.length == 10
            isbn_array = no_space_or_dash_isbn.split('')
            last_digit = isbn_array.pop
            
            isbn_array.each_with_index do |value, index_position|
                sum = (index_position.to_i + 1) * value.to_i
                answer_array << sum
            end

            sum_answer = answer_array.inject(0, :+)
            mod_answer = sum_answer % 11

                if mod_answer == last_digit.to_i
                    return_variable = true
            
                else
                    return_variable = false
                end

        elsif no_space_or_dash_isbn.length == 13
            isbn_array = no_space_or_dash_isbn.split('')
            last_digit = isbn_array.pop
            
            isbn_array.each_with_index do |value, index_position|
                if index_position.to_i % 2 == 0
                    sum = value.to_i * 1
                    answer_array << sum
              
                else
                    sum = value.to_i * 3
                    answer_array << sum
                end
            end

            sum_answer = answer_array.inject(0, :+)
            mod_answer = (10 - (sum_answer % 10)) % 10
                if mod_answer == last_digit.to_i
                    return_variable = true
                
                else
                    return_variable = false
                end

        else
            return_variable = false
        end

    elsif no_space_or_dash_isbn.chop !~ /\D/
        if no_space_or_dash_isbn.length == 10
            isbn_array = no_space_or_dash_isbn.split('')
            last_digit = isbn_array.pop
     
            isbn_array.each_with_index do |value, index_position|
            sum = ((index_position.to_i + 1) * value.to_i)
            answer_array << sum
        end

        sum_answer = answer_array.inject(0, :+)
        mod_answer = sum_answer % 11

        if mod_answer <= 9
            mod_answer   
        
        elsif mod_answer == 10
            mod_answer = "x"
        
        else
            return_variable = false
        end

        if mod_answer == last_digit.downcase
            return_variable = true
        
        else
            return_variable = false
        end
    
    elsif no_space_or_dash_isbn.length == 13
        isbn_array = no_space_or_dash_isbn.split('')
        last_digit = isbn_array.pop
        
        isbn_array.each_with_index do |value, index_position|
            if index_position.to_i % 2 == 0
                sum = value.to_i * 1
                answer_array << sum
            
            else
                sum = value.to_i * 3
                answer_array << sum
            end
        end

        sum_answer = answer_array.inject(0, :+)
        mod_answer = (10 - (sum % 10)) % 10
            if mod_answer == last_digit.to_i
                return_variable = true
            
            else
                return_variable = false
            end

        else
            return_variable = false
        end
    
    else
        return_variable = false
    end
    
    return_variable
end

def send_to_bucket()
    Aws::S3::Client.new(
       access_key_id: ENV['AWS_ACCSESS_KEY_ID'],
       secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
       region: ENV['AWS_REGION'],
     )
     file = 'input_isbn_file.csv'
     write_to_file = File.open(file, 'a')
     write_to_file << bucketlist + '\n'
     write_to_file.close
   
     s3 = Aws::S3::Resource.new(region: 'us-east-2')
     bucket = 'minedmindskata'
     obj = s3.bucket(bucket).object('input_isbn_file.csv')
       File.open('input_isbn_file.csv', 'rb') do |file|
         obj.put(body: file)
       end
   end

def get_file()
    s3 = Aws::S3::Client.new
    csv_file_from_bucket = s3.get_object(bucket: 'minedmindskata', key: 'new.csv')
    csv_file_read = csv_file_from_bucket.body.read

    split_csv = csv_file_read.split
    list = []
    split_csv.each do |item|
        item.gsub(/"/, '')
        list << item
    end
end

def check_csv
    write_file = File.open("output_isbn_file.csv", "a")

    CSV.foreach('input_isbn_file.csv') do |row|
        if isbn_function(row[1]) == true
            row << ("valid")
        else
            row << ("invalid")
        end

        write_file.puts row[0] + ", " + row[1] + ", " + row[2]
    end
end

check_csv