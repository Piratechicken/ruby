pi = 3.14159265359

# Prompt and get string from user
print "Enter diameter: "
input = gets
# Convert to float
diameter = input.to_f

# Calculate circumference from two floats
circ = pi * diameter

# Calculate area
radius = diameter / 2.0
area = pi * radius**2.0

# Calculate volume
volume = (4.0/3.0) * pi * radius**3.0

# Display circ to user   
print "Circumference = "
puts circ.round(3)

# Display area to user
print "Area = "
puts area.round(3)

# Display vol to user
print "Volume = "
puts volume.round(3)

