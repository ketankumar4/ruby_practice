require "csv"
file = File.open("read.csv","r")
emp=Hash.new {|h,k| h[k]=[]}
#sum=0
CSV.foreach("read.csv",headers: true) do |row|
  emp["#{row["Designation"]}"]<<"#{row["Name"]} (Empid: #{row["empid"]})"
end
emp.sort.to_h
p emp
File.open("23.txt","w") do |xyz|
  emp.each do |key,value|
    xyz.write("#{key}\n")
    value.each {|i| xyz.write("#{i}\n")}
  end
end