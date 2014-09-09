:Input/:Output

1. Standard Kernel Methods

instructions = gets.chomp # We chomp away the \n at the end of input
puts instructions.reverse # Sometimes we do not listen to the user

# puts add new line to output unlike print, while p inspects the object

2. Opening, Reading, Editing, And Closing Files

File.open('./secret-manual.txt') #Opens the file and returns a File object

File.gets # Returns one line of file, kind of like kernel's gets.

File.foreach("./secret-manual.txt") {|line| } # Cane read one by one at once

File.read('./secret-manual.txt') # Returns the entire file

File.readlines('./secret-manual.txt') # Returns array of text line by line

File.open('./secret-manual.txt',"w").puts "!!!" # Open for read mode then add !!! with File.puts (similar to kernel method)

File.close # Closes file

3. Globa Standard In/Outs

* Standard Input And Outputs Are Used For Commandline And Are $stdout/$stdin Respectively
 
* Kernel Get And Kernel Puts Are Equal To $stdout.puts And $stdin.gets

4. Access Commandline Additional Arguments In Ruby Script

* Variable ARGV Contains Array Of Additional Strings Passed In Commandline 
