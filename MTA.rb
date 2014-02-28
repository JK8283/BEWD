## The program takes the line and stop that a user is getting on at and the line and stop 
## that user is getting off at and prints the total number of stops for the trip.

## There are 3 subway lines:
## The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
## The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
## The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.

## All 3 subway lines intersect at Union Square, but there are no other intersection points.

## For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, 
## so you'll have to differentiate this when you name your stops in the arrays.


## HINTS:
## Consider diagraming the lines by sketching out the subway lines and their stops and intersection.
## Make subway lines are keys in a hash, while the values are an array of all the stops on each line.
## The key to the lab is to find the intersection of the lines at Union Square.
## Make sure the stops that are the same for different lines have different names 
## (i.e. 23rd on the N and on the 6 need to be differentiated)

# Methods

def lineListing
	puts "Enter either: N Line, L Line, Six Line"
end

def nStopListing
	puts "Enter either: Times Square, 34th, 28th on N, 23rd on N, Union Square, 8th on N"
end

def lStopListing
	puts "Enter either: 8th on L, 6th, Union Square, 3rd, 1st"
end

def sixStopListing
	puts "Enter either: Grand Central, 33rd, 28th on Six, 23rd on Six, Union Square, Astor Place"
end

# Subway Lines
N_Line = ["Times Square", "34th", "28th on N", "23rd on N", "Union Square", "8th on N"] 
L_Line = ["8th on L", "6th", "Union Square", "3rd", "1st"] 
Six_Line = ["Grand Central", "33rd", "28th on Six", "23rd on Six", "Union Square", "Astor Place"]
Subway_Lines = {"N Line" => N_Line, "L Line" => L_Line, "Six Line" => Six_Line}

# Begin Code:
puts "Which line will you be getting on?"
	lineListing
	Line1 = gets.chomp

puts "Which stop will you be getting on?"
	if Line1 == "N Line"
		nStopListing
	elsif Line1 == "L Line"
		lStopListing
	elsif Line1 == "Six Line"
		sixStopListing
	end
	Stop1 = gets.chomp
	

puts "Which line will you be getting off?"
	lineListing
	Line2 = gets.chomp

puts "Which stop will you be getting off?"
	if Line2 == "N Line"
		nStopListing
	elsif Line2 == "L Line"
		lStopListing
	elsif Line2 == "Six Line"
		sixStopListing
	end
	Stop2 = gets.chomp
	

if Line1 == Line2
	Number_Stops = ( Subway_Lines[Line1].index(Stop1) - Subway_Lines[Line2].index(Stop2) ).abs 
	puts "You are traveling #{Number_Stops} stop(s) on this trip."

else	
	Number_Stops1 = ( Subway_Lines[Line1].index(Stop1) - Subway_Lines[Line1].index("Union Square") ).abs 
	Number_Stops2 = ( Subway_Lines[Line2].index(Stop2) - Subway_Lines[Line2].index("Union Square") ).abs 
	Number_Stops = Number_Stops1 + Number_Stops2
	puts "You are traveling #{Number_Stops} stop(s) on this trip."
end

