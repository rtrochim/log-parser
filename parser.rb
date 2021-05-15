visits = Hash.new([])

File.open(ARGV[0]).each do |line|
  page, viewer = line.split(" ")
  visits[page] += [viewer]
end

visits.sort_by { |k, v| -v.count }.each do |k, v|
  puts "#{k} #{v.count} views"
end

puts "\n"

visits.sort_by { |k, v| -v.uniq.count }.each do |k, v|
  puts "#{k} #{v.uniq.count} unique views"
end