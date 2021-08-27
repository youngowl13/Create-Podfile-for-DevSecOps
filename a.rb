a=[];b=[]
File.readlines('1').each {|x| a<<x.gsub(' ','').chomp}
File.readlines('2').each {|x| b<<x.gsub(' ','').chomp}


for c in 0..a.count

print "pod \'#{a[c]}\', \'~> #{b[c]}\'"
puts ''
end
