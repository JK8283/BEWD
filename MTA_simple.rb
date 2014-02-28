N_Line = ["Times Square", "34th", "28th on N", "23rd on N", "Union Square", "8th on N"] 
L_Line = ["8th on L", "6th", "Union Square", "3rd", "1st"] 
Six_Line = ["Grand Central", "33rd", "28th on Six", "23rd on Six", "Union Square", "Astor Place"]

puts "Which line will you be getting on?"
	Line1 = gets.chomp

puts "Which stop will you be getting on?"
	Stop1 = gets.chomp

puts "Which line will you be getting off?"
	Line2 = gets.chomp

puts "Which stop will you be getting off?"
	Stop2 = gets.chomp

if Line1 == Line2
	if Line1 == "N Line"
		Number_Stops = (N_Line.index(Stop1) - N_Line.index(Stop2)).abs 
		puts "You are traveling #{Number_Stops} stops on this trip."
	elsif Line1 == "L Line"
		Number_Stops = (L_Line.index(Stop1) - L_Line.index(Stop2)).abs
		puts "You are traveling #{Number_Stops} stops on this trip." 
	elsif Line1 == "Six Line"
		Number_Stops = (Six_Line.index(Stop1) - Six_Line.index(Stop2)).abs
		puts "You are traveling #{Number_Stops} stops on this trip." 
	end 

else	
	if Line1 == "N Line"
		Number_Stops1 = (N_Line.index(Stop1) - N_Line.index("Union Square")).abs 
	elsif Line1 == "L Line"
		Number_Stops1 = (L_Line.index(Stop1) - L_Line.index("Union Square")).abs
	elsif Line1 == "Six Line"
		Number_Stops1 = (Six_Line.index(Stop1) - Six_Line.index("Union Square")).abs
	end 

	if Line2 == "N Line"
		Number_Stops2 = (N_Line.index(Stop2) - N_Line.index("Union Square")).abs 
	elsif Line2 == "L Line"
		Number_Stops2 = (L_Line.index(Stop2) - L_Line.index("Union Square")).abs
	elsif Line2 == "Six Line"
		Number_Stops2 = (Six_Line.index(Stop2) - Six_Line.index("Union Square")).abs
	end 

	Number_Stops = Number_Stops1 + Number_Stops2
	puts "You are traveling #{Number_Stops} stops on this trip."
end

