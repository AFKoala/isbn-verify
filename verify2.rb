# def isbn_dash(isbn)
#     puts isbn
#     x = 10
#     clean_isbn = isbn.delete('-')
#     puts clean_isbn
#     case clean_isbn.length
#         when 10
#             then true
#         when 13
#             then true
#     end
#     unless isbn || (isbn.include?(x) && isbn[9] == x)
#         false
#     end
#     checksum = clean_isbn.pop
#     puts checksum
# end

# def isbn_space(isbn)
#     # puts isbn
#     clean_isbn = isbn.delete(' ')
#     # puts clean_isbn
#     case clean_isbn.length
#         when 10
#             then true
#         when 13
#             then true
#     end
#     unless isbn || (isbn.include?(x) && isbn[9] == x)
#         false
#     end
#     checksum = clean_isbn.pop
#     puts checksum
# end

def isbn_both(isbn)
    puts isbn
    clean_isbn = isbn.delete(' -')
    puts clean_isbn
    case clean_isbn.length
        when 10
            then true
        when 13
            then true
    end
    unless isbn || (isbn.include?(x) && isbn[9] == x)
        false
    end
    split_isbn = clean_isbn.scan
    puts split_isbn
    checksum = split_isbn.pop
    puts checksum
end

# isbn_dash('1234-567-89x')
# puts '------------'
# isbn_space('1234 567 890')
# puts '------------'
isbn_both('1-234 567 8-90')